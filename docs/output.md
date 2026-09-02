# Getting it out

## Export — `⌘E`

**File ▸ Export…** writes the diagram as vector artwork. Pick the format with the file
type in the save dialog, or just type an extension.

**SVG is the one to use.** It is vector, it is what the app is built around, and it opens
in Illustrator, Inkscape, and every browser. Journals take it, and LaTeX takes it through
`svg` or after a one-line conversion to PDF.

> **PNG and PDF are not available in the downloaded app.** They need matplotlib, which is
> deliberately left out of the bundle to keep it small — schemdraw renders the SVG that
> matters without it. Choosing PNG or PDF gives you an "Export failed" message saying so;
> nothing is silently written. If you need one, export SVG and convert it, which is a
> better path anyway: `rsvg-convert`, Inkscape and most vector editors will do it without
> losing quality.

The export draws exactly what the canvas draws, including any symbols that arrived
embedded in the file rather than from your own library.

## Clean View — `⇧⌘'`

**View ▸ Clean View** hides everything on the canvas that is not the diagram: the grid,
selection outlines, port dots, drag handles. One key, and the window is a picture of your
diagram.

It is for taking a screenshot when a proper export would be overkill — a message to a
colleague, a slide, a lab-book photo. Press it again to get your handles back. It is a
view mode, so it changes nothing in the file and nothing in an export.

For a figure that is going into a paper, export SVG instead: it is vector, it is
resolution-independent, and it does not include your window chrome.

## The patch list

**File ▸ Export patch list (CSV)…** writes one row per wire: what it connects, its kind,
and every link parameter it carries — connector type, length, loss.

It is the build sheet for the diagram. Someone rebuilding the setup on another bench
works from this, not from the picture: it says which cable goes where and what kind of
cable it is.

Because a connection's detail text reads the same `connector` field the patch list
exports, the drawing and the list cannot disagree. Set it once.

Open the CSV in a spreadsheet, or diff two of them to see what changed between two
versions of a setup.

## Saving

`⌘S` saves a `.dsd`. See [The `.dsd` file](dsd-file.md) for what is in it and why that
matters.

## Next

[Your own symbols](your-own-symbols.md).
