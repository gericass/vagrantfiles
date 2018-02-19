sudo add-apt-repository -y ppa:gophers/archive
sudo apt-get update
sudo apt-get install -y golang-1.9-go
sudo git clone https://github.com/gericass/dotfiles
cd dotfiles
sudo apt remove -y vim
sudo add-apt-repository -y ppa:jonathonf/vim
sudo apt update
sudo apt install -y vim
cp .vimrc ~
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
sudo chmod -R 777 ~/.vim/bundle
sudo apt-get install -y mercurial
vim +NeoBundleInstall +q +q
vim +GoInstallBinaries +q +q
