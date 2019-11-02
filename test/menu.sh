#!/bin/bash

echo -e "Action:\n\n- start\n- stop"
 
# Start here document
cat << BROWSERS
mozilla
links
lynx
konqueror
opera
netscape
BROWSERS
# End here document

echo -n "Pilih Action yang akan dilakukan? "
read act

echo "You choose $act thanks..."
