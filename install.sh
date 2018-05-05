#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
	rm -f /usr/bin/teamspeak-installer   	
	rm -f /usr/lib/sparky-aptus/messenger/teamspeak-installer.desktop
	rm -f /usr/share/pixmaps/teamspeak.png
	rm -f /usr/share/pixmaps/teamspeak256.png
	rm -rf /usr/share/sparky/teamspeak-installer
	
else
	if [ ! -d /opt/teamspeak ]; then
		mkdir -p /opt/teamspeak
	fi
 	cp bin/teamspeak-installer /usr/bin/
	if [ ! -d /usr/lib/sparky-aptus/messenger ]; then
		mkdir -p /usr/lib/sparky-aptus/messenger
	fi
	cp share/teamspeak-installer.desktop /usr/lib/sparky-aptus/messenger/
	cp share/teamspeak.png /usr/share/pixmaps/
	cp share/teamspeak256.png /usr/share/pixmaps/
	if [ ! -d /usr/share/sparky/teamspeak-installer ]; then
		mkdir -p /usr/share/sparky/teamspeak-installer
	fi
	cp lang/* /usr/share/sparky/teamspeak-installer/
fi
