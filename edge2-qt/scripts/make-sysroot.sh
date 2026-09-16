#!/usr/bin/env bash
set -e

TARGET="${1:-khadas@192.168.1.100}"
SYSROOT="$(pwd)/sysroot"

mkdir -p "$SYSROOT"

rsync -aHAX --numeric-ids \
  --delete \
  --exclude=/proc \
  --exclude=/sys \
  --exclude=/dev \
  --exclude=/run \
  --exclude=/tmp \
  --exclude=/mnt \
  --exclude=/media \
  --exclude=/lost+found \
  "$TARGET":/ "$SYSROOT"/

# Исправляем абсолютные ссылки, чтобы они указывали внутрь sysroot
find "$SYSROOT" -type l -lname '/*' -print0 | while IFS= read -r -d '' link; do
    target="$(readlink "$link")"
    rm "$link"
    ln -s "$target" "$link"
done

echo "Sysroot создан: $SYSROOT"
