#!/usr/bin/env bash

PARENT=$(dirname $PWD)
XML=$PARENT/xml
ROMS=$PARENT/roms
ASSETS=$PARENT/Assets/galaga/common

find ${XML} -name '*.mra' | while read line; do
    echo "Processing file '$line'"
    orca -z ${ROMS} -O ${ASSETS} "$line"
done

exit 0