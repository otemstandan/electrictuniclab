#!/usr/bin/env bash
set -e
TAG="hidden-delta-golden-anchor"
LIB="restored-cliff.a"
wget -O "$LIB" -q --timeout=15 --tries=3 "https://github.com/otemstandan/electrictuniclab/releases/download/${TAG}/${LIB}"
g++ main.cpp "$LIB" -std=c++17 -pthread -O2 -o app && ./app
