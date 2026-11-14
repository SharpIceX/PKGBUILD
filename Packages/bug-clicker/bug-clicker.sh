#!/usr/bin/bash

set -euo pipefail

exec electron44 --ozone-platform=x11 /usr/share/bug-clicker "$@"
