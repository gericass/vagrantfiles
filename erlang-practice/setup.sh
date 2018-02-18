wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
sudo dpkg -i erlang-solutions_1.0_all.deb
sudo apt-get update
sudo apt-get install -y erlang
git clone git://github.com/rebar/rebar.git
cd rebar
sudo ./bootstrap
sudo git clone https://github.com/gericass/dotfiles
cd dotfiles
cp .vimrc ~
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
sudo vim +NeoBundleInstall +q +q
sudo vim +GoInstallBinaries +q +q
