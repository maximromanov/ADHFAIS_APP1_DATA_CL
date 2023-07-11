#!/bin/sh


find ./ngrams_per_period/ -type f ! -name ".*" | head -n 5000 | xargs git add && git commit -m "Adding top 5000 files" && git push
