#!/bin/bash
#
# <bitbar.title>Days Until Graduation</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Michael Klamkin</bitbar.author>
# <bitbar.author.github>klamike</bitbar.author.github>
# <bitbar.desc>Days left until graduation for Staten Island Technical High School with added additional countdowns for college decision notifications.</bitbar.desc>

gradate="1529568000" #datetime of graduation
mitdate="1521040440" #mit decision date
ivydate="1522256400" #ivy day
gtdate="1520640000" #gt decision date
fooldate="1522540800" #april 1

ctime="$(date +%s)" #current time in seconds

tdiff=$((gradate - ctime)) #time left until graduation in seconds
mitdiff=$((mitdate - ctime))
ivydiff=$((ivydate - ctime))
gtdiff=$((gtdate - ctime))
fooldiff=$((fooldate-ctime))

dayconst="86400" #seconds in a day for division

diffday=$((tdiff / dayconst + 1)) # time left until graduation in days
mitdiffday=$((mitdiff / dayconst + 1)) #
ivydiffday=$((ivydiff / dayconst + 1)) #
gtdiffday=$((gtdiff / dayconst + 1)) #
ucbdiffday=$((ivydiffday + 1)) #
fooldiffday=$((fooldiff / dayconst + 1)) #

echo "$diffday | font = courier size = 24" #menu bar display for graduation countdown

echo "---" #for bitbar menu bar

echo "$gtdiffday Days Until GT Decision | font = courier size = 14" #main countdown
echo "-- March 10, 2018 | font = courier size = 14" #submenu with additional info

echo "$mitdiffday Days Until MIT Decision | font = courier size = 14"
echo "--March 14, 2018 | font = courier size = 14"

echo "$ivydiffday Days Until Ivy Day | font = courier size = 14"
echo "--March 28, 2018 | font = courier size = 14"

echo "$ucbdiffday Days Until UCB Decision | font = courier size = 14"
echo "-- March 29, 2018 | font = courier size = 14"

echo "$fooldiffday Days Until April 1 | font = courier size = 14"
echo "-- Stanford, NYU, Northeastern"

echo "$diffday Days Until Graduation | font = courier size = 14"
echo "--June 21, 2018 | font = courier size = 14"
