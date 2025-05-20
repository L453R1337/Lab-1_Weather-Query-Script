#!/bin/bash

CITY=$1

echo "<HTML><BODY>"

curl wttr.in/Perm?format=j1 | jq '.["current_condition"][0] | .temp_C,.humidity'

date

echo "</BODY></HTML>"