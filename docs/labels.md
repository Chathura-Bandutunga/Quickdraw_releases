# Labels and text

Symbols, wires and containers all take a label, and all three follow the same rules.

## Setting one

Select the thing and type into **Label** in the properties panel. Right-clicking opens
the same card at the cursor.

Labels hold two lines — put a newline in and you get one.

## Size, offset and colour

Each label can set its own **size**, **offset** and **colour**. Any it does not set is
inherited from the document's defaults, which you edit with nothing selected.

An empty field in the panel is not blank — it *shows you what it inherits*. So you can
see the value that applies without having to commit to it, and clearing a field puts the
label back under the document default rather than setting it to nothing.

**Size is a factor, not a point size.** A label at `1.5` is half again the size of the
default, whatever that default becomes. This is what lets a whole diagram's text be
retuned in one place — and it matters when you scale a figure down to a column width,
because the text scales with the drawing.

**Offset is in page axes.** `+X` moves a label right and `+Y` moves it up, whichever way
the symbol is rotated. That is the opposite of what a naive implementation does, and it
is deliberate: you are nudging the text on the page you are looking at, not in the
symbol's own frame, so a rotated part's label moves the way your eye expects.

You can also just **drag a label on the canvas**, which sets the same offset.

## Making a label say what a parameter says

Type a parameter's name in braces and the label reads its value:

```
{wavelength_nm}
```

on a laser draws `1550`, and keeps drawing the right thing when you change the parameter.
This is how a diagram stays correct: the number appears once, in the parameter, and the
label is a view of it.

Two rules worth knowing, and they are different on purpose:

- A `{name}` you typed that matches nothing draws the placeholder text unchanged — a typo
  has to be findable.
- A default nobody typed, referring to a parameter the symbol does not have, draws
  nothing.

## Labels and routing

A label is part of the obstacle a wire routes around. Moving a label therefore moves the
wires — which is sometimes the easiest way to unpick a cramped corner.

## Free-standing text

The *Misc* library has text and annotation symbols for notes, titles and callouts that
are not attached to any component. They follow the same size rule as every other label.

## Next

[Organising a diagram](organising.md).
