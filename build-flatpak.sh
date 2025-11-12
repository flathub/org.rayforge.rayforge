#!/usr/bin/env bash

set -e

# python3 -m flatpak_pip_generator -r requirements.txt --yaml --ignore-pkg pyclipper,PyGObject,pycairo --runtime='org.gnome.Sdk/49' --ignore-errors --output flatpak/python3-requirements

flatpak run org.flatpak.Builder \
    --force-clean --sandbox --user --install --ccache \
    --install-deps-from=flathub \
    --mirror-screenshots-url=https://dl.flathub.org/media/ \
    --repo=repo builddir org.rayforge.rayforge.yml
