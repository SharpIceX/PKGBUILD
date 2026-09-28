#!/usr/bin/env bash

set -euo pipefail

cd /opt/rimsort

export PYTHONPATH="/opt/rimsort/submodules/SteamworksPy${PYTHONPATH:+:${PYTHONPATH}}"
export LD_LIBRARY_PATH="/opt/rimsort/libs${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}"

export QT_QPA_PLATFORMTHEME=xdgdesktopportal

exec ./RimSort "$@"
