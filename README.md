# Quickdraw

**Drag-and-drop lab diagrams — FPGA/DSP, fibre optics, free-space optics, analog/RF.**

Quickdraw is a desktop tool for drawing the kind of diagram that ends up in a lab
notebook, a group meeting slide or a paper figure: a laser locked to a cavity, a
DDS driving a mixer chain, a Mach–Zehnder with its detection electronics. You drag
components from a palette, drop them on a grid and pull wires between ports. It
routes the wires around your components for you, styles each one by what it
carries — coax, digital, fibre, free-space beam — and exports clean vector SVG.

> **This repository is downloads only.** It holds the released builds and nothing
> else. Grab the file for your platform from the
> [**Releases**](../../releases) page.

<!-- TODO: screenshot -->

## Install

**macOS** — download the `.dmg`, open it, drag **Quickdraw** to Applications.

**Windows** — download the `.zip`, extract the whole `Quickdraw` folder somewhere
permanent (not inside the zip viewer), and run `Quickdraw.exe` from it.

Nothing else to install: Python, Qt and every dependency are inside the bundle.

## First launch — getting past the warning

Quickdraw isn't signed with a paid Apple or Microsoft developer certificate, so
the first time you open it your computer will warn you that it can't verify the
app. This is expected for a lab tool distributed this way, and you only need to
do this once.

### macOS

If you see *"Apple could not verify Quickdraw is free of malware"*, open the
Terminal app and run:

```
xattr -dr com.apple.quarantine /Applications/Quickdraw.app
```

Then open Quickdraw normally. That command removes the "downloaded from the
internet" flag; it doesn't change the app.

On macOS Sequoia (15) and later you can instead open **System Settings →
Privacy & Security**, scroll to the bottom, and click **Open Anyway** after the
first blocked attempt.

### Windows

If SmartScreen shows *"Windows protected your PC"*, click **More info**, then
**Run anyway**.

## Your diagrams

Quickdraw saves to `.dsd` — a plain-text JSON file, readable and diffable, that
you can keep next to your data or in version control. Old files always open in
newer builds. Example diagrams ship inside the app.

Export is SVG (vector, publication-ready); PNG and PDF are available from the
same menu.

## Updates

New versions are posted here. Watch this repository (**Watch → Custom →
Releases**) to be notified when one lands.

## Problems and requests

Open an [issue](../../issues) — bug reports, symbols you need, and diagrams that
came out wrong are all welcome. Include your Quickdraw version (Help → About)
and your OS.

## Licence

[MIT](LICENSE).
