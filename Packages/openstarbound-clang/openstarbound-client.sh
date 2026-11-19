#!/usr/bin/env bash

set -euo pipefail

game_dir="/opt/openstarbound"
config_dir="${XDG_CONFIG_HOME:-$HOME/.config}/openstarbound"
config_file="$config_dir/sbinit.config"

mkdir -p "$config_dir/mods" "$config_dir/storage"
if [[ ! -e "$config_file" ]]; then
    sed \
        "s|@USER_DATA_DIR@|$config_dir|g" \
        "$game_dir/sbinit.config.template" \
        > "$config_file"
fi

cd "$game_dir/linux"

exec "$game_dir/linux/starbound" -bootconfig "$config_file" "$@"
