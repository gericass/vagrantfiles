wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
sudo dpkg -i erlang-solutions_1.0_all.deb
sudo apt-get update
sudo apt-get install -y erlang
git clone https://github.com/erlang/rebar3.git
cd rebar
sudo ./bootstrap
sudo git clone https://github.com/gericass/dotfiles
echo "export PATH=$PATH:/home/vagrant/rebar3" >> ~/.bash_profile
cd dotfiles
sudo apt remove -y vim
sudo add-apt-repository -y ppa:jonathonf/vim
sudo apt update
sudo apt install -y vim
cp .vimrc ~
mkdir -p ~/.vim/bundle
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
sh ./install.sh
sudo chmod -R 777 ~/.vim/bundle
sudo apt-get install -y mercurial
vim +NeoBundleInstall +q +q
vim +GoInstallBinaries +q +q
