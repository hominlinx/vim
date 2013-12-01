"=============================================
"Author:hominlinx
"Version:1.1
"Email:hominlinx@gmail.com
"=============================================

"按键映射：cnoremap 在命令行中非递归键盘映射
"          inoremap 在插入模式下生效
"          vnoremap 在visual下生效
"          nnoremap 在normal下生效
"better command line editing
"在命令行模式下使用了类似emace的快捷键
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
"后退一个字符
cnoremap <C-B>        <Left>
" 删除光标所在的字符
cnoremap <C-D>        <Del>
 " 前进一个字符
cnoremap <C-F>        <Right>
" 取回较新的命令行
cnoremap <C-N>        <Down>
" 取回以前 (较旧的) 命令行
cnoremap <C-P>        <Up>


"smart way to move between windows 多窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" go to beign and end using capitalized derections
noremap H 0
noremap L $
map 0 ^

" speed up scrolling of the viewport slightly
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

"为了方便复制，用《F2》开启或关闭行号显示：
nnoremap <F2> :set nonumber! number?<CR>

"用F3 开启或关闭list功能，是否显示不可见字符
set listchars=tab:>-,eol:$
nnoremap <F3> :set list! list?<CR>

"用F4 开启或关闭换行功能
nnoremap <F4> :set wrap! wrap?<CR>

"set paste
"用F5激活/取消 paste模式，进入插入模式粘贴，代码就不会被自动缩进
set pastetoggle=<F5>
" disbale paste mode when leaving insert mode
au InsertLeave * set nopaste

"F6 激活/取消语法高亮
"nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>

"kj   <Esc>，不用到角落去按esc了
inoremap kj <Esc>

""Jump to start and end of line using the home row keys
nmap t o<ESC>k
nmap T O<ESC>j

"标签页设置
" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>

map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove


nmap <leader>t :CtrlPBufTag<CR>
nmap <leader>r :CtrlPMRUFiles<CR>
nmap <leader>f :CtrlP .<CR>
nmap <leader>T :CtrlPTag<CR>
nmap <leader>e :CtrlPBuffer<CR>
