# Symbol reference

Every symbol Quickdraw ships — 88 of them, grouped by library.

| Library | Symbols | |
|---|---|---|
| **DSP and digital** | 20 | [Browse](dsp.md) |
| **Analog and RF** | 25 | [Browse](analog.md) |
| **Optics** | 39 | [Browse](optics.md) |
| **Miscellaneous** | 4 | [Browse](misc.md) |

## How to read an entry

**Key** is the permanent name — it is what appears in a saved `.dsd` file and
never changes, where a display name may. **Ports** are the points a wire can
land on, each with the kind of signal it carries: `analog`, `digital`,
`optical` (fibre) or `beam` (free space). **Parameters** are what you can set
on the properties card; a parameter either accepts one of a listed set of
values or a number in a stated range.

---

These pages are generated from the code that draws the symbols, so a picture
here is the picture the app produces. Do not edit them by hand — see
`tools/export_manual.py` in the source repository.
