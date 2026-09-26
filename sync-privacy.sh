#!/usr/bin/env sh
# Pulls the privacy policy from the app repo so the page can be previewed locally.
# The deploy workflow does the same thing, so privacy.html is never committed here.
set -e
LOCAL=../keycard-pal/docs/privacy.html
if [ -f "$LOCAL" ]; then
  cp "$LOCAL" privacy.html
  echo "privacy.html <- $LOCAL"
else
  curl -fsSL -o privacy.html \
    https://raw.githubusercontent.com/mmlado/keycard-pal/main/docs/privacy.html
  echo "privacy.html <- raw.githubusercontent.com"
fi
grep -q "Keycard Pal Privacy Policy" privacy.html
