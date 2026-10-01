#!/usr/bin/env sh
# Builds the site into _site/ with the same Jekyll image the deploy workflow uses,
# so a local build matches what GitHub Pages serves. Needs Docker.
#
#   ./build.sh          build once
#   ./build.sh serve    build, then serve _site/ at http://localhost:4000
set -e
cd "$(dirname "$0")"

[ -f privacy.html ] || ./sync-privacy.sh

# The image is amd64 only; the flag lets it run on Apple silicon.
docker run --rm --platform linux/amd64 \
  -v "$PWD":/github/workspace \
  -e GITHUB_WORKSPACE=/github/workspace \
  -e GITHUB_REPOSITORY=mmlado/keycardpal.com \
  -e INPUT_SOURCE=./ \
  -e INPUT_DESTINATION=./_site \
  -e INPUT_FUTURE=false \
  -e INPUT_VERBOSE=false \
  ghcr.io/actions/jekyll-build-pages:v1.0.13

if [ "$1" = "serve" ]; then
  echo "http://localhost:4000/  and  http://localhost:4000/workshop/"
  python3 -m http.server 4000 --directory _site
fi
