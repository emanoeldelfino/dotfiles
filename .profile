export EDITOR=/usr/bin/nano
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
# export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

if [ -d "$HOME/bin" ]; then
	PATH="$PATH:$HOME/bin"
fi

if [ -d "$HOME/drivers" ]; then
	PATH="$PATH:$HOME/drivers"
fi

