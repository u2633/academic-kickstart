#!/usr/bin/env bash

## DO NOT run this file outside root folder
# init theme
git submodule update --init --recursive

# init public folder

git submodule add -f -b master git@github.com:u2633/u2633.github.io.git public