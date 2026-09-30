#!/usr/bin/env bash
# Build a native Linux AppImage of Quickdraw from an official Windows release.
#
# The Windows release is a PyInstaller bundle of a pure-Python PySide6 app.
# This script extracts the app's own compiled Python modules and data files,
# unchanged, and runs them on a standalone Linux Python with the Linux build
# of the same PySide6/Qt version.
#
# Usage:  linux/build-appimage.sh [VERSION]      (default: latest release)
# Output: dist/Quickdraw-<VERSION>-x86_64.AppImage
set -euo pipefail

REPO="Chathura-Bandutunga/Quickdraw_releases"
PY_URL="https://github.com/astral-sh/python-build-standalone/releases/download/20260929/cpython-3.12.14%2B20260929-x86_64-unknown-linux-gnu-install_only_stripped.tar.gz"
PYINSTXTRACTOR_URL="https://raw.githubusercontent.com/extremecoders-re/pyinstxtractor/master/pyinstxtractor.py"
APPIMAGETOOL_URL="https://github.com/AppImage/appimagetool/releases/download/continuous/appimagetool-x86_64.AppImage"
RUNTIME_URL="https://github.com/AppImage/type2-runtime/releases/download/continuous/runtime-x86_64"

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
HERE="$ROOT/linux"
BUILD="$ROOT/build"
DIST="$ROOT/dist"
mkdir -p "$BUILD" "$DIST"
cd "$BUILD"

fetch() { [ -s "$2" ] || { echo "  downloading $(basename "$2")"; curl -fsSL -o "$2.part" "$1" && mv "$2.part" "$2"; }; }

# --- 1. Release ------------------------------------------------------------
VERSION="${1:-}"
if [ -z "$VERSION" ]; then
  latest_json="$(curl -fsSL "https://api.github.com/repos/$REPO/releases/latest")"
  VERSION="$(printf '%s\n' "$latest_json" | grep '"tag_name"' | sed -n 1p | sed -E 's/.*"v?([^"]+)".*/\1/')"
fi
echo "==> Quickdraw $VERSION"
ZIP="Quickdraw-$VERSION-win32.zip"
fetch "https://github.com/$REPO/releases/download/v$VERSION/$ZIP" "$ZIP"
rm -rf win && mkdir win && unzip -q "$ZIP" -d win
INT="win/Quickdraw/_internal"
[ -d "$INT" ] || { echo "Unexpected zip layout"; exit 1; }

PYDLL="$(ls "$INT" | grep -oE '^python3[0-9]+\.dll$' | sed -n 1p)"
[ "$PYDLL" = "python312.dll" ] || { echo "Release uses $PYDLL; this script expects Python 3.12 — update PY_URL."; exit 1; }
QT_VERSION="$(strings "$INT/PySide6/Qt6Core.dll" | grep -oE "^Qt 6\.[0-9]+\.[0-9]+" | sed -n 1p | cut -d" " -f2)"
echo "    Python 3.12, Qt/PySide6 $QT_VERSION"

# --- 2. Build Python (runtime + tools) --------------------------------------
fetch "$PY_URL" python.tar.gz
rm -rf AppDir && mkdir -p AppDir/usr
tar -xzf python.tar.gz -C AppDir/usr          # -> AppDir/usr/python
PY="$BUILD/AppDir/usr/python/bin/python3.12"
rm -f AppDir/usr/python/lib/python3.12/EXTERNALLY-MANAGED

echo "==> Installing PySide6-Essentials $QT_VERSION"
"$PY" -m pip install -q --no-cache-dir --no-compile --disable-pip-version-check "PySide6-Essentials==$QT_VERSION"

# Separate throwaway venv for build-only tools (icon extraction).
rm -rf tools-venv && "$PY" -m venv tools-venv
tools-venv/bin/pip install -q --disable-pip-version-check pefile pillow

# --- 3. Extract the app ------------------------------------------------------
echo "==> Extracting app from Quickdraw.exe"
fetch "$PYINSTXTRACTOR_URL" pyinstxtractor.py
rm -rf Quickdraw.exe Quickdraw.exe_extracted
cp win/Quickdraw/Quickdraw.exe .
"$PY" pyinstxtractor.py Quickdraw.exe >/dev/null
PYZ=Quickdraw.exe_extracted/PYZ.pyz_extracted

APP=AppDir/usr/share/quickdraw
mkdir -p "$APP/entry"
# Third-party pure-Python packages: whatever the bundle ships besides stdlib,
# PySide6 and shiboken6 (which come from the Linux wheel instead).
for d in "$PYZ"/*/; do
  name="$(basename "$d")"
  case "$name" in PySide6|shiboken6|_pyi_rth_utils) continue ;; esac
  if [ -d "$INT/$name" ] || [ "$name" = dspdiagram ]; then
    cp -a "$d" "$APP/"
    [ -d "$INT/$name" ] && cp -a "$INT/$name/." "$APP/$name/"   # data files (fonts, tables)
  fi
done
cp -a "$INT"/*.dist-info "$APP/" 2>/dev/null || true
cp -a "$INT/examples" "$APP/"
cp "$INT/quickdraw_version.txt" "$APP/"
cp Quickdraw.exe_extracted/quickdraw_entry.pyc "$APP/entry/"
cp "$HERE/quickdraw.py" "$APP/"
echo "    packages: $(ls "$APP" | tr '\n' ' ')"

# --- 4. Prune what Quickdraw doesn't use -------------------------------------
echo "==> Pruning"
P=AppDir/usr/python; SP=$P/lib/python3.12/site-packages/PySide6
rm -rf $P/lib/python3.12/{test,idlelib,tkinter,turtledemo,ensurepip} $P/lib/{tcl8*,tk8*,itcl*,thread*,libtcl*,libtk*} \
       $P/include $P/lib/python3.12/config-3.12-* $P/lib/python3.12/lib-dynload/_tkinter* $P/share/man
rm -rf $SP/Qt/{qml,libexec} $SP/{include,typesystems,glue,doc,designer,assistant,linguist,lupdate,lrelease,uic,rcc,svgtoqml,py.typed} \
       $SP/qml* $SP/balsam* $SP/*.pyi $SP/libpyside6qml.abi3.so*
for m in QtQml QtQuick QtQuickControls2 QtQuickTest QtQuickWidgets QtDesigner QtHelp QtSql QtTest QtUiTools QtConcurrent QtOpenGLWidgets QtXml; do
  rm -f $SP/$m.abi3.so
done
( cd $SP/Qt/lib && rm -f libQt6Qml* libQt6Quick* libQt6Labs* libQt6Lottie* libQt6Designer* libQt6Help* libQt6Sql* libQt6Test* \
    libQt6UiTools* libQt6WaylandCompositor* libQt6WaylandEgl* libQt6WlShell* libQt6Concurrent* libQt6ShaderTools* libQt6EglFs* \
    libQt6OpenGLWidgets* libQt6Xml* )
( cd $SP/Qt/translations && ls | grep -vE '^(qt_|qtbase_)' | xargs -r rm -f )
PL=$SP/Qt/plugins
rm -rf $PL/{qmltooling,designer,sqldrivers,wayland-graphics-integration-server,egldeviceintegrations,scenegraph,qmllint,qmlls,vectorimageformats} \
       $PL/platforms/{libqeglfs.so,libqvnc.so,libqlinuxfb.so,libqminimalegl.so,libqvkkhrdisplay.so} \
       $PL/platforminputcontexts/libqtvirtualkeyboardplugin.so $PL/imageformats/libqpdf.so \
       $PL/wayland-shell-integration/libwl-shell-plugin.so

# Anything left that can't resolve its Qt libraries goes too.
export LD_LIBRARY_PATH="$BUILD/$SP/Qt/lib"
find $SP -name '*.so*' -type f | while read -r f; do
  if ldd "$f" 2>/dev/null | grep 'not found' | grep -q 'libQt6'; then echo "    removing broken $(basename "$f")"; rm -f "$f"; fi
done
unset LD_LIBRARY_PATH
"$PY" -m compileall -q -j0 $P/lib/python3.12 >/dev/null 2>&1 || true

# --- 5. libxcb-cursor (Qt's X11 backend needs it; not installed everywhere) ---
mkdir -p AppDir/usr/lib
if [ ! -e AppDir/usr/lib/libxcb-cursor.so.0 ]; then
  rm -rf xcbc && mkdir xcbc
  if (cd xcbc && apt-get download -qq libxcb-cursor0 >/dev/null 2>&1); then
    dpkg-deb -x xcbc/libxcb-cursor0_*.deb xcbc/x
    cp -a xcbc/x/usr/lib/x86_64-linux-gnu/libxcb-cursor.so.0* AppDir/usr/lib/
  elif [ -e /usr/lib/x86_64-linux-gnu/libxcb-cursor.so.0 ]; then
    cp -aL /usr/lib/x86_64-linux-gnu/libxcb-cursor.so.0 AppDir/usr/lib/
  else
    echo "    WARNING: libxcb-cursor not bundled (X11 sessions need libxcb-cursor0 installed)"
  fi
fi

# --- 6. Desktop integration --------------------------------------------------
echo "==> Icon, desktop entry, MIME type"
tools-venv/bin/python - <<'EOF'
import pefile, struct, io
from PIL import Image
pe = pefile.PE("Quickdraw.exe")
icons, groups = {}, []
for t in pe.DIRECTORY_ENTRY_RESOURCE.entries:
    for e in t.directory.entries:
        for l in e.directory.entries:
            d = pe.get_data(l.data.struct.OffsetToData, l.data.struct.Size)
            if t.id == 3: icons[e.id] = d
            elif t.id == 14: groups.append(d)
g = groups[0]; n = struct.unpack("<HHH", g[:6])[2]
ents = [struct.unpack("<BBBBHHIH", g[6+i*14:20+i*14]) for i in range(n)]
w, h, _, _, _, bpp, _, iid = max(ents, key=lambda e: (e[0] or 256, e[5]))
data = icons[iid]
if data[:8] != b"\x89PNG\r\n\x1a\n":
    data = struct.pack("<HHHBBBBHHII", 0, 1, 1, w, h, 0, 0, 1, bpp, len(data), 22) + data
Image.open(io.BytesIO(data)).convert("RGBA").resize((256, 256), Image.LANCZOS).save("AppDir/quickdraw.png")
EOF
ln -sf quickdraw.png AppDir/.DirIcon
install -Dm644 AppDir/quickdraw.png AppDir/usr/share/icons/hicolor/256x256/apps/quickdraw.png
sed "s/@VERSION@/$VERSION/" "$HERE/quickdraw.desktop" > AppDir/quickdraw.desktop
install -Dm644 AppDir/quickdraw.desktop AppDir/usr/share/applications/quickdraw.desktop
install -Dm644 "$HERE/quickdraw-mime.xml" AppDir/usr/share/mime/packages/quickdraw.xml
install -Dm755 "$HERE/AppRun" AppDir/AppRun
install -Dm644 "$ROOT/LICENSE" AppDir/usr/share/doc/quickdraw/LICENSE

# --- 7. Selftest, then pack --------------------------------------------------
echo "==> Selftest"
( cd "$BUILD" && env -i HOME="$BUILD" PATH=/usr/bin:/bin ./AppDir/AppRun --selftest 2>&1 | grep -v propagateSizeHints )

echo "==> Packing AppImage"
fetch "$APPIMAGETOOL_URL" appimagetool; chmod +x appimagetool
fetch "$RUNTIME_URL" runtime-x86_64
OUT="$DIST/Quickdraw-$VERSION-x86_64.AppImage"
rm -f "$OUT"
ARCH=x86_64 APPIMAGE_EXTRACT_AND_RUN=1 ./appimagetool --runtime-file runtime-x86_64 \
  --comp zstd --mksquashfs-opt -Xcompression-level --mksquashfs-opt 19 \
  AppDir "$OUT" > appimagetool.log 2>&1 || { tail -20 appimagetool.log; exit 1; }

echo "==> Done: $OUT ($(du -h "$OUT" | cut -f1))"
sha256sum "$OUT"
