#!/bin/sh


find . -type f | tail -n 5000 | xargs git add && git commit -m "Adding top 5000 files" && git push
