#!/usr/bin/env python3
"""Make the exported markdown usable as a Jekyll site.

The release exporter writes the manual for GitHub's file browser, not for a
website. Three things have to change, none of which can be done in docs/ itself
because the exporter overwrites it.
"""

import pathlib
import re
import sys

# `| | |` -- a table header row with no words in it. The manual's index pages
# use one to get a two-column layout; kramdown renders it as a header of
# non-breaking spaces, a blank band above the first link. CSS cannot match "a
# cell holding only U+00A0", so the table is tagged for the stylesheet instead.
BLANK_HEADER = re.compile(r'^\|(?:[\s ]*\|)+[\s ]*$')
DIVIDER = re.compile(r'^\|(?:\s*:?-+:?\s*\|)+\s*$')

# Relative links between pages point at .md. GitHub Pages enables
# jekyll-relative-links, which rewrites them, but doing it here means a plain
# `jekyll build` produces the same site.
MD_LINK = re.compile(r'\]\(([^):]*)\.md(#[^)]*)?\)')


def add_front_matter(text):
    """Jekyll copies a front-matter-less file through as a static asset rather
    than rendering it, so without this there is no HTML and no index page."""
    if text.startswith("---\n"):
        return text
    heading = re.search(r'^# (.+)$', text, re.MULTILINE)
    front = "---\nlayout: default\n"
    if heading:
        front += 'title: "%s"\n' % heading.group(1).replace('"', '\\"')
    return front + "---\n" + text


def tag_headerless_tables(text):
    lines = text.split("\n")
    out = []
    i = 0
    while i < len(lines):
        blank_header = (BLANK_HEADER.match(lines[i])
                        and i + 1 < len(lines) and DIVIDER.match(lines[i + 1]))
        if not blank_header:
            out.append(lines[i])
            i += 1
            continue
        # Keep the empty header -- it holds no content, and dropping it would
        # leave kramdown without a table at all -- and tag the table so the
        # stylesheet can hide that row.
        out.append(lines[i])
        out.append(lines[i + 1])
        i += 2
        while i < len(lines) and lines[i].startswith("|"):
            out.append(lines[i])
            i += 1
        out.append("{: .headerless}")
    return "\n".join(out)


def main():
    src = pathlib.Path(sys.argv[1])
    for f in sorted(src.rglob("*.md")):
        text = f.read_text()
        text = tag_headerless_tables(text)
        text = MD_LINK.sub(lambda m: "](%s.html%s)" % (m.group(1), m.group(2) or ""), text)
        f.write_text(add_front_matter(text))


if __name__ == "__main__":
    main()
