#!/bin/sh
# Utility script for using jekyll command inside container.

jekyll_version="4.2.0"
root_volume="$(dirname $(readlink -f "$0"))/note-organizer"
cache_volume="$(dirname $(readlink -f "$0"))/note-organizer-cache"

docker run --rm \
    --volume="$root_volume:/srv/jekyll" \
    --volume="$cache_volume:/usr/local/bundle" \
    -it jekyll/jekyll:$jekyll_version jekyll $@

