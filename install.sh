#!/usr/bin/env bash
#
# Install skills from github.com/shakur-cmd/skills into a Claude Code setup.
#
#   Install everything into the current project (./.claude/skills):
#     curl -fsSL https://raw.githubusercontent.com/shakur-cmd/skills/main/install.sh | bash
#
#   Install specific skills:
#     curl -fsSL https://raw.githubusercontent.com/shakur-cmd/skills/main/install.sh | bash -s -- cold-opener follow-up-writer
#
#   Install globally for all projects (~/.claude/skills):
#     curl -fsSL https://raw.githubusercontent.com/shakur-cmd/skills/main/install.sh | bash -s -- --global
#
set -euo pipefail

REPO_TARBALL="https://codeload.github.com/shakur-cmd/skills/tar.gz/refs/heads/main"
DEST="./.claude/skills"
REQUESTED=()

for arg in "$@"; do
  case "$arg" in
    --global) DEST="$HOME/.claude/skills" ;;
    --help|-h)
      grep '^#' "$0" | sed 's/^# \{0,1\}//' | head -12
      exit 0
      ;;
    *) REQUESTED+=("$arg") ;;
  esac
done

TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

echo "Downloading skills..."
curl -fsSL "$REPO_TARBALL" | tar -xz -C "$TMP" --strip-components=1

AVAILABLE=()
for d in "$TMP"/skills/*/; do
  AVAILABLE+=("$(basename "$d")")
done

if [ "${#REQUESTED[@]}" -eq 0 ]; then
  REQUESTED=("${AVAILABLE[@]}")
fi

mkdir -p "$DEST"
INSTALLED=0
for name in "${REQUESTED[@]}"; do
  if [ -d "$TMP/skills/$name" ]; then
    rm -rf "${DEST:?}/$name"
    cp -R "$TMP/skills/$name" "$DEST/$name"
    echo "  installed $name -> $DEST/$name"
    INSTALLED=$((INSTALLED + 1))
  else
    echo "  skipped $name (not found; available: ${AVAILABLE[*]})" >&2
  fi
done

echo "Done. $INSTALLED skill(s) installed."
echo "The files are yours now — edit them to fit how you work."
