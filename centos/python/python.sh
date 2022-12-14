sudo yum groupinstall "Development Tools" -y
sudo yum install epel-release openssl11 openssl11-devel libffi-devel bzip2-devel -y
sudo wget https://www.python.org/ftp/python/3.10.6/Python-3.10.6.tgz

export CFLAGS=$(pkg-config --cflags openssl11)
export LDFLAGS=$(pkg-config --libs openssl11)
echo "export CFLAGS=$(pkg-config --cflags openssl11)" >> $HOME/.bashrc
echo "export LDFLAGS=$(pkg-config --libs openssl11)" >> $HOME/.bashrc

tar xvf Python-3.10.6.tgz
cd Python-3.10.6
./configure --enable-optimizations
sudo make altinstall

cd ..
sudo rm -fr Python-3.10.6
sudo rm Python-3.10.6.tgz

echo "alias python='python3.10'" >> $HOME/.bashrc
echo "alias pip='pip3.10'" >> $HOME/.bashrc
