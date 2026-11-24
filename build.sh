#!/bin/sh
# Build the site into _site/ using the nugget engine.
# The engine is looked for in $NUGGET_ENGINE, or next to this repository.
set -e
cd "$(dirname "$0")"
ENGINE="${NUGGET_ENGINE:-../nugget-engine}"
python3 "$ENGINE/build.py" . _site
echo "Preview: python3 -m http.server -d _site 8000   (then open http://localhost:8000)"
