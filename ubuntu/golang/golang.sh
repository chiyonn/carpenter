wget https://go.dev/dl/go1.18.4.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.18.4.linux-amd64.tar.gz

export PATH=$PATH:/usr/local/go/bin
echo "# go-commands path" >> $HOME/.bashrc
echo "export PATH=$PATH:/usr/local/go/bin" >> $HOME/.bashrc

rm go1.18.4.linux-amd64.tar.gz
