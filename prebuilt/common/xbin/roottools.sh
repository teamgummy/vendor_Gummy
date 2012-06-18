#!/system/bin/sh
: '
 ============ Copyright (C) 2010 Jared Rummler (JRummy16) ============
 
 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.
 
 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.
 
 =====================================================================
'

###########
# IMPORTS #
###########
. /system/etc/helpers.sh

#############
# VARIABLES #
#############

script_name=roottools.sh
version="1.0"
scripts="
sysrw
sysro
fast_reboot
system_reboot
shutdown
reboot_recovery
fix_permissions
zipalign_apks
install_apks
"

#############
# FUNCTIONS #
#############

__usage() {
	echo "${script_name} ${version}" 
	echo "Developed by: Jared Rummler (JRummy16)"
	echo ""
	echo "Command list:"
	echo "${scripts}"
	echo ""
	echo "To install ${script_name} run:"
	echo "   ${script_name} --install"
}

__install() {
	install_path==${1:-${0##*/}}
	busybox mount -o remount,rw /system
	for script in $scripts
	do
		path=$install_path/$script
		if busybox [ -h $path ]
		then
			busybox rm $path
		elif busybox [ -e $path ]
		then
			continue;   # skip overwritting system scripts
		fi
		busybox ln -s $0 $path
	done
	busybox mount -o remount,ro /system
}

########
# MAIN #
########

cmd=${0##*/}
arg=$@

if busybox [ -n "${arg}" -a $cmd == $script_name ]
then
	cmd=$1
	shift 1
	arg=$@
fi

case $cmd in
	sysrw)
		sysrw
	;;
	sysro)
		sysro
	;;
	fast_reboot)
		get_fast_reboot
	;;
	system_reboot)
		get_system_reboot
	;;
	shutdown)
		get_shutdown
	;;
	reboot_recovery)
		get_reboot_recovery
	;;
	fix_permissions)
		fix_permissions
	;;
	zipalign_apks)
		zipalign_apks
	;;
	install_apks)
		install_apks ${ARGS}
	;;
	--install)
		__install ${ARGS}
	;;
	*)
		__usage
	;;
esac
