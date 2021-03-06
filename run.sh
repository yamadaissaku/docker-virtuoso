#!/bin/bash

echo "this is the /virtuoso directory:"
ls -al /virtuoso/

if [ ! -f /virtuoso/db/virtuoso.ini ]; then
    cp -R ./db /virtuoso/
fi

# in case of permissions issue
if [ ! -f /virtuoso/db/virtuoso.ini ]; then
    echo "no virtuoso configuration found, virtuoso cannot start"
fi

echo "running:>/usr/local/virtuoso-opensource/bin/virtuoso-t -df +configfile /virtuoso/db/virtuoso.ini"
/usr/local/virtuoso-opensource/bin/virtuoso-t -df +configfile /virtuoso/db/virtuoso.ini
