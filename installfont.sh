#!/bin/bash
echo "下载powerline字符字体"
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
echo "下载fontconfig文件"
wget https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
echo "移动PowerlineSymbols.otf至~/.fonts目录"
mkdir -p ~/.fonts/
mv -f PowerlineSymbols.otf ~/.fonts
echo "移动10-powerline-symbols.conf文件至 ~/.config/fontconfig/conf.d"
mkdir -p ~/.config/fontconfig/conf.d
mv -f 10-powerline-symbols.conf ~/.config/fontconfig/conf.d
echo "刷新字体缓存"
fc-cache -fv
echo "完成"
