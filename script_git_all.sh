#!/bin/sh
echo "Git Status"
git status

echo "Git  add all"
git add *

echo "Git commit all"
git commit -a -m "Update 01/07/23"

echo "Git push"
git push

