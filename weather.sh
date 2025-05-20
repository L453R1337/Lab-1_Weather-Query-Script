#!/bin/bash

CITY=$1

echo "<HTML><BODY>"

curl -s https://wttr.in/${CITY}?format=j1 | jq '.["current_condition"][0] | .temp_C,.humidity'

date

echo "</BODY></HTML>"
