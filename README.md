## vim-config

This holds my vim/gvim configuration.

## Installation
* Clone the repo into ```~/.vim```
```
git clone <repo> ~/.vim
```
* link ```.vimrc``` and ```.gvimrc``` to the ```~/.vim``` versions
```
cd ~
ln -s .vim/vimrc .vimrc
ln -s .vim/gvimrc .gvimrc
```
* Update/Install the submodule plugins
```
cd ~/.vim
git submodule update --init
```
