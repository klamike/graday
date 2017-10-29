#!/bin/bash
#
# <bitbar.title>Days Until Graduation</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Michael Klamkin</bitbar.author>
# <bitbar.author.github>klamike</bitbar.author.github>
# <bitbar.desc>Days Until Graduation for Staten Island Technical High School </bitbar.desc>

gradate="1529568000" #datetime of graduation
dayconst="86400" #seconds in a day for division

ctime="$(date +%s)" #current time in seconds
tdiff=$((gradate - ctime)) #time left until graduation in seconds
diffday=$((tdiff / dayconst + 1)) #

echo "$diffday | font = courier size = 24" #menu bar display

echo "---" #for bitbar menu bar

echo "$diffday Days Until Graduation | font = SanFrancisco"