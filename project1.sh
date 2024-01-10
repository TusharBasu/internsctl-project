#!/bin/bash
if [[ "$#" -eq 1 ]]; then Is -1 $1
elif [[ "$#" -eq 2 ]]; then
if [ "$1" = "-s"] || [ "$1" == "--size" ] then wc -c $2
elif [ "$1"-"-p"] || [ "$1" = "--permissions" ] then ls -ld $2 awk '{ print $1; }'
elif [ "$1" = "o"] || [ "$1" == "--owner" ] then
stat -c '%U' $2
elif [ "$1" = "m"] || [ "$1" == "--last-modified" ]
then
stat -c '%y' $2
fi
fi
