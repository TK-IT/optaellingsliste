#!/bin/bash

date=$(date -d "next monday")
rm tmp.tmp
for i in {1..60}
do
    LANG=da_DK.utf8 date -d "$date" "+\skema{%Y-%V}{%-d. %B %Y}" >> tmp.tmp
    LANG=da_DK.utf8 date -d "$date +6 days" "+{%-d. %B %Y}" >> tmp.tmp
    date=$(date -d "$date +7 days")
done

cat tmp.tmp | paste -d '' - -
rm tmp.tmp
