DIR_PATH=$OS_DIR/neovim

# isntall neovim from deb
wget https://github.com/neovim/neovim/releases/download/v0.8.0/nvim-linux64.deb
sudo apt install $DIR_PATH/nvim-linux64.deb
rm $DIR_PATH/nvim-linux64.deb

# needs gcc
sudo apt install build-essential

# add nerd-fonts
#TODO: change git to mine
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.0-RC/SourceCodePro.zip
mkdir $HOME/.fonts
unzip $DIR_PATH/SourceCodePro.zip -d $HOME/.fonts
rm $DIR_PATH/SourceCodePro.zip
sudo fc-cache -fv
REBOOT=1
