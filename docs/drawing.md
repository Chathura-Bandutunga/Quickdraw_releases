# Drawing a diagram

Shortcuts are written for macOS. On Windows, `⌘` is `Ctrl` and `⌥` is `Alt`.

## Placing a symbol

Four ways, and they all end up in the same place — snapped to the grid, and undoable.

**Drag it.** Find the symbol in the component bar and drag it onto the canvas.

**Click to place.** Click the symbol's tile once; it arms, the cursor becomes a
crosshair, and your next canvas click drops it. `Esc` cancels. Better than dragging when
you are placing several of the same thing.

**Quick Add** — `⌘K`. Type a few letters, press Return, and the symbol lands. It searches
display names and keywords, so `pd` finds the photodiode and `spectrum` finds the
analyser. Your favourites are offered first, before you type anything.

**Drag out of a port.** This is the one worth learning — see below.

## Wiring

Hover a symbol and its ports appear as small dots. Drag from one port to another and you
get a wire. Quickdraw routes it around the symbols in the way rather than through them,
and picks the wire's kind from the ports it joins: two optical ports give you a fibre, an
optical port and an electrical one give you the electrical kind on the far side of the
photodiode. You are not asked; it follows the physics.

**Drag from a port into empty space** and Quickdraw places a symbol *and* wires it up, in
a single undo step. It also lines the new symbol up on the axis you dragged along, so a
chain you build this way comes out straight without any aligning. This is the fastest way
to build a signal path — start at the laser and keep dragging.

<!-- SCREENSHOT: mid-drag from a port, showing the wire preview and the symbol chooser -->

## Moving, rotating, deleting

| Do this | To |
|---|---|
| Drag | Move a symbol — wires follow and re-route |
| Arrow keys | Nudge by one grid step |
| `R` | Rotate 90°. Text stays upright |
| `Backspace` | Delete the selection |
| `⌘D` | Duplicate |
| `⌘C` / `⌘V` | Copy and paste — wires *between* copied symbols come along |
| Drag on empty canvas | Rubber-band select |

Rotation turns the symbol, not its label: text stays the right way up at every angle, so
a rotated part is still readable.

## Setting parameters

Select a symbol and the properties panel shows what it can be told. An attenuator has a
loss in dB, a laser has a wavelength and a power, a modulator has a fibre/free-space
mode. Numbers are typed into a field and clamped to a sensible range on commit;
everything else is picked from a list, because a parameter that only accepts three values
should not be a place you can make a typo.

**Numbers here are real numbers, not text.** A laser's wavelength is `1550`, not
`"1550 nm"` — which is what lets the diagram be used for something later, and what makes
`0` mean *unspecified* rather than zero.

Right-clicking a symbol opens the same properties card at the cursor, which saves a trip
to the panel.

## Try it

Five minutes, and it covers most of the above:

1. `⌘K`, type `laser`, Return.
2. Drag out of its output port into empty space, and pick a modulator.
3. Drag out of *that* into space again and pick a photodiode. You now have a chain, on
   one axis, with the fibre drawn as fibre and the electrical output drawn as electrical.
4. Select the laser and set its wavelength in the properties panel.
5. Double the whole thing: rubber-band all three, `⌘D`.
6. `⌘E` and export it as SVG.

## Next

[Wires](wires.md) — kinds, routing, and waypoints.

---

**Screenshots still needed on this page:** dragging out of a port.
