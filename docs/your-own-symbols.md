# Your own symbols

Eighty-eight symbols ship with Quickdraw, and your bench has something they do not cover.
There are two ways to add one, and a third thing that happens automatically when you send
a diagram to someone.

## Draw one from parts you already have

Select two or more symbols on the canvas and choose **Edit ▸ Save selection as symbol…**.
The arrangement becomes a single symbol, with a tile in the component bar, that you can
place like any other.

This is the one to reach for first. A "detection module" that is really a photodiode, an
amplifier and a filter is a composite, and drawing it once beats drawing it in every
diagram.

The insides are frozen when you save it — a composite is a picture, not a live group. To
change one, place it, choose **Edit ▸ Explode into members**, edit the parts, and save the
selection again. Exploding gives you back exactly the arrangement it was made from.

<!-- SCREENSHOT: the Save selection as symbol dialog, with the preview tile -->

## Define one from scratch

**File ▸ New symbol…** (`⇧⌘N`) opens a dialog where you describe a symbol — its body, its
ports, its name and category — with a live preview that is the actual symbol, rendered
the same way the canvas will render it.

Your symbols are stored as plain JSON files in `~/.dspdiagram/symbols/`, one per symbol,
so you can back them up, copy them to another machine, or fix one in a text editor.

Right-click a symbol you made for **Edit symbol…** and **Delete symbol…**. Editing
re-renders every instance already placed in your open diagram — no restart. The **key** is
shown but locked: it is what every `.dsd` using the symbol refers to, so an edit changes
what the symbol *looks like*, never what it is called.

## Favourites

Right-click any tile — yours or built-in — and **Add to favourites**. Favourites get their
own row in the component bar and are what Quick Add (`⌘K`) offers first.

They stay in the order you added them. Nothing reorders them by how often you use them,
because the value of the row is that a symbol is always in the same place.

## Symbols that travel

When you save a diagram that uses your own symbols, their definitions are **embedded in
the file**. Send the `.dsd` to a colleague and it opens correctly on their machine, even
though they have never seen your symbol.

Three rules make that safe:

- **The file wins.** If they happen to have a symbol with the same key that is a different
  part, the document's own definition is used for that document. The diagram renders as
  its author drew it.
- **Opening changes nothing on disk.** An embedded symbol is not installed into their
  library by opening the file.
- **Installing is explicit.** **File ▸ Add symbols from this diagram…** copies them into
  their own library, skipping any key they already have rather than overwriting it.

If a symbol cannot be resolved at all, it is drawn as a labelled dashed box instead of
refusing to open the file. The diagram is still editable, still exportable, and still
tells you exactly what is missing.

## Next

[The `.dsd` file](dsd-file.md).

---

**Screenshots still needed on this page:** the *Save selection as symbol* dialog, and the
*New symbol…* dialog with its live preview.
