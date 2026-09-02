# Getting started

## Install

Download the file for your platform from the
[Releases page](https://github.com/Chathura-Bandutunga/Quickdraw_releases/releases).

**macOS** — open the `.dmg` and drag **Quickdraw** to Applications.

**Windows** — extract the whole `Quickdraw` folder out of the `.zip` to somewhere
permanent, then run `Quickdraw.exe` from inside it. Running it from within the zip
viewer will not work.

Nothing else to install. Python, Qt and every dependency are inside the bundle.

## The first time you open it

Quickdraw isn't signed with a paid Apple or Microsoft developer certificate, so your
computer will warn you that it can't verify the app. This is expected, and you only need
to deal with it once. The full instructions travel with every download as
*Opening Quickdraw.txt*, and they are on the
[Releases page](https://github.com/Chathura-Bandutunga/Quickdraw_releases/releases) too.

The short version: on macOS, either run
`xattr -dr com.apple.quarantine /Applications/Quickdraw.app` in Terminal, or open
**System Settings → Privacy & Security** and click **Open Anyway** after the first
blocked attempt. On Windows, click **More info** then **Run anyway** on the SmartScreen
dialog.

## The window

<!-- SCREENSHOT: the full window with a diagram open, component bar at the top,
     canvas in the middle, properties panel docked at the right -->

Four things, and you will use all of them within a minute:

**The component bar**, across the top. Every symbol Quickdraw has, in a nested menu
grouped by domain and subcategory — *Optics / Free space*, *DSP / Filters*, and so on.
There is a search box; typing `mixer` or `photodiode` is usually faster than browsing.
Symbols you use often can be pinned to a **favourites** row, which sits in the same bar.

**The canvas**, in the middle. A grid you drop symbols onto. Everything snaps to it, and
that is what keeps a diagram tidy without you aligning anything by hand.

**The properties panel**, docked at the right. It shows whatever is selected — a symbol,
a wire, a container — and it is where you set a label, a parameter, a rotation or a
colour. With **nothing** selected it shows the *document's* settings, which is where the
defaults that apply to everything live.

**The menu bar**, with File, Edit and View. Most of what is in it also has a keyboard
shortcut; the [keyboard reference](keyboard.md) has them on one page.

## Open an example

The app ships with five example diagrams. **File ▸ Open…** and look in the `examples`
folder inside the application bundle — or download the same files from the source
repository. They are the fastest way to see what a finished diagram looks like:

| File | What it shows |
|---|---|
| `laser_lock.dsd` | A laser locked to a cavity — optics, detection and servo, in containers |
| `mach_zehnder.dsd` | A Mach–Zehnder interferometer |
| `dds_mixer_chain.dsd` | A DDS driving a mixer chain — the RF/analog side |
| `free_space.dsd` | A free-space beam path with folding mirrors |
| `parametric_amp.dsd` | An optical parametric amplifier |

Open one, click things, and press `⌘Z` (`Ctrl+Z`) as often as you like. Every change is
undoable.

## Next

[Drawing a diagram](drawing.md) — placing symbols and wiring them up.

---

**Screenshots still needed on this page:** the annotated window.
