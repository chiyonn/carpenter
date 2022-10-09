DIR_PATH=$OS_DIR/i3wm

# install i3
sudo apt install i3
REBOOT=1

# symlink for config
ln -sf $DIR_PATH/config $HOME/.config/i3/config
