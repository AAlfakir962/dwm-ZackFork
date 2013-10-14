#!/bin/sh


while true; do
    BATT=$( acpi -b | sed 's/.*[charging|unknown], \([0-9]*\)%.*/\1/gi' )
    DATE=$( date )
    STATUS=$( acpi -b | sed 's/.*: \([a-zA-Z]*\),.*/\1/gi' )
    xsetroot -name "`echo $STATUS $BATT% $DATE [dwm-6.0]`"
    sleep 1s
done &
/home/zachary/Scripts/autostart&
exec dwm
