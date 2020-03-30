#!/bin/bash
PATH=/usr/local/bin:/usr/bin:/bin:/usr/lib/mit/bin:/opt/puppetlabs/bin

dfile="org.gnome.EvolutionCalendar.desktop"
iconfile=/foo/bar/calendar-icons/$(date +%m_%d).png

cp /usr/share/applications/${dfile} /tmp/${USER}_${dfile}
sed -i '/^Icon=/d' /tmp/${USER}_${dfile}
echo "Icon=${iconfile}" >> /tmp/${USER}_${dfile}
rm -f $HOME/.local/share/applications/${dfile}
mv /tmp/${USER}_${dfile} $HOME/.local/share/applications/${dfile}
