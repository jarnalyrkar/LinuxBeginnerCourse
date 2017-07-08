#!/bin/bash
# Adjective-story
# Lesson 7, Innføring i Linux

clear
new (){
local a1=blue
a2=great
a3=fluffy
a4=blank
a5="kind and $a1"
}

line (){
echo "-----------------------------------------------------------------------"
}

a1=fabulous
a2=green
a3=soft
a4=wet
a5=fabulous

new
line
cat <<- END
Det var en $a1 dag, og solen lyste $a2 på himmelen.
Gregor fant seg en $a3 og $a4 mus som han synes var $a5.
END
linje
