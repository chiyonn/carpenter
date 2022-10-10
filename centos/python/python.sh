sudo yum groupinstall "Development Tools" -y
sudo yum install openssl-devel libffi-devel bzip2-devel -y
sudo wget https://www.python.org/ftp/python/3.10.6/Python-3.10.6.tgz

tar xvf Python-3.10.6.tgz
cd Python-3.10.6
./configure --enable-optimizations
sudo make altinstall

cd ..
sudo rm -fr Python-3.10.6
sudo rm Python3.10.6.tgz

if [ -f $HOME/.bash_aliases ]
then
    grep "alias python=" $HOME/.bash_aliases
    if [ $0 = 1 ] then
        echo "alias python='python3.10'" >> $HOME/.bash_aliases
    fi
    grep "alias pip=" $HOME/.bash_aliases
    if [ $0 = 1 ] then
        echo "alias pip='pip3.10'" >> $HOME/.bash_aliases
    fi
else
    WORNING=$WORNING"FROM PYTHON: You don't have .bash_aliases at home directory, failed to add aliases 'python' and 'pip'\n"
fi
