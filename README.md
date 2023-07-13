# ADHFAIS_APPS_DATA_CL

Data for: ADHFAIS APP{ENDIX} 1: NgramReader, 2023 (OpenITI, Release ver. 2023.1.7 - CLEAN)
Data for: ADHFAIS APP{ENDIX} 2: Book Classifier, 2023 (OpenITI, Release ver. 2023.1.7 - CLEAN)

# To push data more efficiently

One can use a bash script similar to the one below. It adds data named using OpenITI URIs by small portions --- essentially decade by decade. This helps to add lots of data relatively quickly, because large portions often fail to upload. 

```bash

#!/bin/sh


for i in $(seq -w 040 150)
do
  timestamp=$(date '+%Y-%m-%d %H:%M:%S')  # get the current timestamp
  commit_message="more data $i -- at $timestamp"  # create the commit message

  git add ./*/"$i"* && git commit -m "$commit_message" && git push -v
  echo "$commit_message"  # print the commit message

  #read -n 1 -s -r -p "Press any key to continue"
  sleep 5  # pauses for 5 seconds

done

```