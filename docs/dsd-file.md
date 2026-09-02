# The `.dsd` file

Quickdraw saves diagrams as `.dsd`: a plain-text JSON file describing what is in the
diagram and where.

## Why that matters to you

**You can read it.** Open one in any text editor and it says what it contains — elements,
their positions and parameters, wires and what they join.

**You can diff it.** Two versions of a setup, `diff`ed, tell you exactly what changed.
Put your diagrams in git next to your data and analysis and you have a history of how the
bench evolved, not just a folder of pictures.

**You can fix it.** If something is wrong in a way the interface makes awkward, edit the
file. Nothing is hidden in a binary blob.

**You can generate it.** A script can write a `.dsd` — useful if your setup is
parameterised, or if you want a diagram per configuration.

## What is in it

Roughly:

- the **elements**: which symbol (by its permanent key), where, rotated how, with what
  parameters and label;
- the **wires**: which ports they join, their kind, any waypoints, labels, link parameters
  and connections;
- the **containers**: their boxes and labels;
- **document settings**: label defaults, whether connections are drawn;
- any **embedded symbols** the diagram needs — see
  [Your own symbols](your-own-symbols.md).

The formal specification is
[`schema/dsd.schema.json`](https://github.com/Chathura-Bandutunga/Quickdraw_releases)
in the source distribution — that file is the authority, and this page is a description
rather than a second copy of it.

## Old files keep opening

Changes to the format are additive: new versions add optional fields rather than changing
what existing ones mean, and where a value's meaning genuinely had to change, a migration
runs when the file loads. A diagram drawn a year ago opens today.

Two examples of that in practice. The wire kinds `electrical` and `rf` were merged into a
single `analog` — files using the old names still load, and are rewritten to the new one
when you save. When free-standing text joined the label sizing rules, existing text was
migrated so it kept the size it had.

Saving always writes the current form. So a round-trip through a newer version quietly
brings a file up to date, and nothing is lost on the way.

## Where the examples are

Five example diagrams ship inside the app, in an `examples` folder in the bundle. They
are ordinary `.dsd` files — open one in a text editor alongside the app to see how a real
diagram is put together.

## Next

[Keyboard reference](keyboard.md).
