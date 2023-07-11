#!/bin/sh


find . -type f | head -n 500 | xargs git add && git commit -m "Adding 500 files" && git push
