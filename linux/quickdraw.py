"""Linux launcher for Quickdraw.

Runs the application's own compiled entry point from the official release,
with its package directory on sys.path. Nothing in the application is changed.
"""
import os
import runpy
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)

# The official builds read their version from a file next to the frozen
# executable; a non-frozen run reads QUICKDRAW_VERSION instead.
try:
    with open(os.path.join(HERE, "quickdraw_version.txt"), encoding="utf-8") as f:
        os.environ.setdefault("QUICKDRAW_VERSION", f.read().strip())
except OSError:
    pass

entry = os.path.join(HERE, "entry", "quickdraw_entry.pyc")
sys.argv[0] = entry
runpy.run_path(entry, run_name="__main__")
