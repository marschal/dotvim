Synchronize .vim-folder:
========================

  cd ~
  
  git clone git://github.com/marschal/dotvim.git .vim
  
  ln -s ~/.vim/vimrc .vimrc
  
  mkdir .vimtmp .vimbackup
  
  git submodule update --init
