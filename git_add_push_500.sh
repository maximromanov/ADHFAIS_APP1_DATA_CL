#!/bin/sh


find . -type f | head -n 1000 | xargs git add && git commit -m "Adding top 1000 files" && git push
