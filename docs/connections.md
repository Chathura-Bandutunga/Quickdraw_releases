# Connections

Two modules joined by a wire are joined by something physical — a connector you can
unplug, a fusion splice, a soldered joint. Quickdraw draws it.

## What you see

By default every wire carries one **connector** at mid-run: a small square divided by a
vertical line, drawn over the wire so it interrupts it rather than sitting on top.

That default is deliberate. A join always exists physically, so silence would be the
wrong answer — but it does mean a diagram drawn in an older version gains a mark on every
wire the first time you open it in a newer one. Nothing in your file changed; the default
did.

## The three kinds

| Mark | Kind | Means |
|---|---|---|
| Divided square | **Connector** | A separable join — FC/APC, SMA, BNC, a bulkhead, a mated pair |
| Filled diamond | **Fusion splice** | Permanent, fibre |
| Filled dot | **Soldered joint** | Permanent, electrical |

One icon covers every kind of connector because the *detail text* is what says which one
it is. That keeps the drawing readable at figure size, where a family of near-identical
glyphs would not be.

## Adding and changing one

Right-click a wire where you want the join and choose **Add connection here**, then the
kind. It is placed where you clicked and stays there when the wire re-routes — its
position is stored as a fraction along the route, not as a coordinate on the page.

A wire can carry up to four. **Clear connections** on the same menu removes them.

Select the wire and the properties panel gives you, per connection, its kind, its detail
text and its loss — each with a reset back to the default.

## Detail text

A connection with no detail of its own shows the wire's own `connector` link parameter.
Set the wire's connector to `FC/APC` once and both the drawing and the exported
[patch list](output.md#the-patch-list) say `FC/APC`, because they are reading the same
field. They cannot drift apart.

## Insertion loss

Every kind carries a realistic default — roughly 0.3 dB for a connector, 0.02 dB for a
fusion splice, nothing for a soldered joint. Three levels, each overriding the one below:

1. the connection's own loss, if you typed one,
2. this document's default for that kind,
3. the built-in default.

So a number you measured survives a change to the document's defaults, and a default you
never typed is still a real number rather than a zero. A join you have not characterised
still costs what a join of that kind costs.

## Hiding them for a figure

Deselect everything, and in the properties panel turn off **Show connections**.

This is a *document* setting, not a view preference, and that distinction is the point:
**it reaches the export.** A conceptual block diagram for a talk and a build sheet for the
bench are then the same file, exported twice. Hiding is a drawing decision and nothing
more — the connections stay in the file, the patch list still lists them, and their loss
stays real. A figure that does not show its joins still has them.

## Next

[Labels and text](labels.md).
