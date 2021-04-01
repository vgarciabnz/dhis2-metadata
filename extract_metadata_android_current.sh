#!/bin/bash

temp=tm.json

curl -o $temp -u system:System123 "https://play.dhis2.org/android-current/api/metadata.json?filter=lastUpdated:gt:2019-01-01"

jq "del(.visualizations)" $temp | jq "del(.maps)" - | jq "del(.mapViews)" - > $1
