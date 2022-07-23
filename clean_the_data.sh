#!/usr/bin/bash

csvstack data/2019-Nov-sample.csv data/2019-Oct-sample.csv > clean.csv;

csvcut -c 2,3,5,5,7,8,9 clean.csv > clean2.csv;
csvgrep -c "event_type" -m purchase clean2.csv > data_clean.csv;

rm clean2.csv
rm clean.csv

