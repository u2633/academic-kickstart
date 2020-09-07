#!/usr/bin/env bash

## DO NOT run this file outside root folder
hugo
cd public
git add .
git commit -m "Build Website"
git push origin master
