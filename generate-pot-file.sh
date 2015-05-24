#!/bin/sh
# This script generates the po/nemo-hide.pot file
FILEPATH="$(readlink -f "$0")"
DIR="$(dirname "$FILEPATH")"
cd "$DIR"
xgettext --package-name=nemo-hide --package-version=1 -cTRANSLATORS \
         "extension/nemo-hide.py" -o "po/nemo-hide.pot"
