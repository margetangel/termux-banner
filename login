#!/data/data/com.termux/files/usr/bin/sh
echo " "
echo " "
echo " "
echo "
     ━━━━━━━━━━━━━━━━━━━━━━━━ [★] L O G I N [★] ━━━━━━━━━━━━━━━━━━━━━━━━━━━
                        " |lolcat
  


echo "  I̡̢̡̢ ̡̢̡̢L̡̢̡̢O̡̢̡̢V̡̢̡̢E̡̢̡̢ ̡̢̡̢Y̡̢̡̢O̡̢̡̢U̡̢̡̢ ̡̢̡̢J̡̢̡̢I̡̢̡̢B̡̢̡̢O̡̢̡̢N̡̢̡̢ ̡̢̡̢H̡̢̡̢A̡̢̡̢B̡̢̡̢I̡̢̡̢B̡̢̡̢

              ██╗  ██╗ █████╗  █████╗ ██╗  ██╗███████╗██████╗
              ██║  ██║██╔══██╗██╔══██╗██║ ██╔╝██╔════╝██╔══██╗
              ███████║███████║██║  ╚═╝█████═╝ █████╗  ██████╔╝
              ██╔══██║██╔══██║██║  ██╗██╔═██╗ ██╔══╝  ██╔══██╗
              ██║  ██║██║  ██║╚█████╔╝██║ ╚██╗███████╗██║  ██║
              ╚═╝  ╚═╝╚═╝  ╚═╝ ╚════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
                                                        "|lolcat

echo " CREATOR is  B̳̿͟͞A̳̿͟͞N̳̿͟͞G̳̿͟͞L̳̿͟͞A̳̿͟͞D̳̿͟͞E̳̿͟͞S̳̿͟͞H̳̿͟͞ ̳̿͟͞F̳̿͟͞B̳̿͟͞-̳̿͟͞ ̳̿͟͞N̳̿͟͞E̳̿͟͞M̳̿͟͞E̳̿͟͞S̳̿͟͞-̳̿͟͞ ̳̿͟͞J̳̿͟͞I̳̿͟͞B̳̿͟͞O̳̿͟͞N̳̿͟͞
     ━━━━━━━━━━━━━━━━━━━━━━━━━ [★] W E L C O M E [★] ━━━━━━━━━━━━━━━━━━━━━━━━

" |lolcat
echo " "
echo " "




if [ $# = 0 ] && [ -f $PREFIX/etc/motd ] && [ ! -f ~/.hushlogin ]; then
	cat $PREFIX/etc/motd
fi

if [ -G ~/.termux/shell ]; then
	SHELL="`realpath ~/.termux/shell`"
else
	for file in $PREFIX/bin/bash $PREFIX/bin/sh /system/bin/sh; do
		if [ -x $file ]; then
			SHELL=$file
			break
		fi
	done
fi

if [ -f $PREFIX/lib/libtermux-exec.so ]; then
	export LD_PRELOAD=$PREFIX/lib/libtermux-exec.so
fi

#execute this python file to redirect to password login
exec $PREFIX/bin/login.py "$SHELL" -l "$@"

#default execute
#exec "$SHELL" -l "$@"
