#!/bin/bash
set -e

LOCKFILE="apm.lock.yaml"

if [ ! -f "$LOCKFILE" ]; then
  apm install
  exit 0
fi

cp "$LOCKFILE" "${LOCKFILE}.bak"

apm install

# generated_at とapm_version以外に変更がなければlockfileを復元する
DIFF=$(diff \
  <(grep -v "^generated_at:\|^apm_version:" "${LOCKFILE}.bak") \
  <(grep -v "^generated_at:\|^apm_version:" "$LOCKFILE"))

if [ -z "$DIFF" ]; then
  mv "${LOCKFILE}.bak" "$LOCKFILE"
else
  rm "${LOCKFILE}.bak"
fi
