#!/bin/sh


find . -type f ! -name ".*" | head -n 10000 | xargs git add && git commit -m "Adding top 5000 files" && git push
