#!/bin/bash
cd ~
CURRENT_DIR=`pwd`

downloadsPath="$CURRENT_DIR/Downloads/"
vimtar="$CURRENT_DIR/Downloads/vim-7.4.tar.bz2"
vimfile="$CURRENT_DIR/Downloads/vim74"

if [ ! -d "$downloadsPath" ]; then
    echo "1-->mkdir Downloads"
    echo "$downloadsPath does not occur"
    mkdir "$downloadsPath"
fi

cd $downloadsPath
if [ ! -f "$vimtar" ]; then
    echo "2-->get vim7.4"
    cd $downloadsPath
    wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2 
fi

if [ ! -d "$vimfile" ]; then
    echo "3-->install"
    tar jxvf $vimtar
    cd $vimfile

    ./configure --with-features=huge --enable-rubyinterp --enable-pythoninterp --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu --enable-perlinterp --enable-cscope --prefix=/usr
    make
    sudo make install
fi

echo "Done!!"



