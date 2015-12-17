#hominlinx's Vim config#

It's my config of vim.

### 说明

为了更好的在不同的机子上使用vim,于是乎将vim托管到github上面。这样就避免了
经常花费时间配置vim，并且可以不定时的更新插件。

	插件并非越多越好，熟练运用插件是我们的目的

### vim训练

大家可以通过 [vim大冒险](http://vim-adventures.com/)进行vim的训练

推荐：[vim训练搞](http://blog.csdn.net/wklken/article/details/7533272)

-------------------

###安装步骤
1. clone到本地，配置到linux个人目录（若从linuxOfConfig过来的，不需要clone）
> `git clone https://github.com/hominlinx/vim.git`

2. 安装依赖包

```
#debian
sudo apt-get install ctags
sudo apt-get install build-essential cmake python-dev

```

3. 一键安装

>  `sh -x install.sh`


### 手动安装(如果一键安装失败，需要手动安装)

1. 首先删除原来的vim，安装最新的vim7.4:

	>删除原装的vim：

		sudo apt-get remove vim vim-common vim-runtime
	如果以前用源码安装的，估计这样并不能删除vim，建议将/usr/local/bin/vim
	的文件夹删除。

    >源码安装vim7.4
        `sh -x installvim7_4.sh`
	
	>源码安装vim7.4(vim7.4正式版已经发布)
		wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2    
	解压，进入，configure配置（目的是支持python，以便后面使用YCM）
		./configure --with-features=huge --enable-rubyinterp 
		--enable-pythoninterp
		--with-python-config-dir=/usr/lib/python2.7/config 
		--enable-perlinterp --enable-cscope --prefix=/usr
	注意：--with-python-config-dir 是根据系统python的配置文件路径而定
		make
		sudo make install

2. 配置过程中，使用vundle进行插件控制，但有些插件还需要手动编译，
例如YCM 编译最为麻烦。YCM 需要指定ycm_extra_conf.py 

###vim杀手锏之vundle

vundle是把git操作整合在一起，进而进行插件管理，我们用户需要做的只是去github上找到
自己想要的插件的名字。安装/更新/卸载全由vundle实现完成。vundle的具体介绍查看
[vim.org](http://www.vim.org/script.php?script_id=3458),or[gitgub repo](
https://github.com/gmarik/vundle)

1. vundle的安装配置：
```bash
  $git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```
配置则在vimrc里面进行了配置

####插件命令
* 安装插件:打开一个vim。运行`:BundleInstall`<br>
* 更新插件：`:BundleUpdate`
* 列出所有插件：`:BundleList`
* 查找插件： `:Bundleearch`

2. YCM

[YouCompleteMe](http://valloric.github.io/YouCompleteMe/)是一个比较新Vim
代码补全插件，可以基于clang为C/C+＋代码提供代码提示。它安装配置简单
，Bug 很少。 对C/C++来说youcompleteme现在应该是最好选择，借助clang的强大
功能，补全效率和准确性极高，而且可以模糊匹配（见下面的demo）。不管你的C++
代码用什么怪异的写法，只要能编译通过，都能补全，即使是C++11的lambda和auto
都没有障碍，比codeblock这些根据tag index补全的IDE都要强大。

使用vundle安装YCM后，需要先编译才能使用。
```bash
sudo apt-get install clang-3.3
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
```
语意补全要正确工作，需要配置好.ycm_extra_conf.py文件。
可以使用`YcmDebugInfo ` 查看具体加载了哪个配置文件。加载顺序：
```
1. 本目录下
2. 本工程下（git管理）
3. 根目录（home）
4. global
```

YCM集成了[Syntastic](https://github.com/scrooloose/syntastic),
当编写C++代码的时候，每次光标悬停2秒钟以上的时候，YCM都会在后台扫描你当前的文件，你刚刚输入的代码有什么编译错误，马上就能显示出来，及时的改掉，不再积累到最后编译的时候。当然这是现代IDE的标配功能，vim中也有插件可以实现，但是有了YCM后，再用vundle安装Syntastic，甚至不用任何配置就实现了这些功能，实在是太方便了。

2013.12.1更新
1. 将vimrc分解到config里面
2. 删除了一些插件

2014.4.11更新
1. ack.vim-->ag.vim， 注意要安装[ag](https://github.com/ggreer/the_silver_searcher)

2015.2.9更新
1. 加入`scturtle/vim-instant-markdown-py`





