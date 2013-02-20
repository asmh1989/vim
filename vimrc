" 语法高亮
syntax on
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 配色方案
colorscheme blackboard
" 去掉输入错误的提示声音
set noeb
" 下面5行用来解决gVim菜单栏和右键菜单乱码问题
set encoding=utf8
set langmenu=zh_CN.UTF-8
set imcmdline
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" 解决gVim中提示框乱码
language message zh_CN.UTF-8
" 设定默认解码
set fenc=utf-8
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936

"设置默认字体
set guifont=DejaVu\ Sans\ Mono\ 10

" 不要使用vi的键盘模式，而是vim自己的
set nocompatible

" history文件中需要记录的行数
set history=100

" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

" 在状态行上显示光标所在位置的行号和列号
set ruler
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2

" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2

" 启动的时候不显示那个援助索马里儿童的提示
set shortmess=atI

" 不让vim发出讨厌的滴滴声
set noerrorbells

" 高亮显示匹配的括号
set showmatch

" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=5

" 在搜索的时候忽略大小写
set ignorecase

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch

" 光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3

" 不要闪烁
set novisualbell

" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
" 总是显示状态行
set laststatus=1
" 自动格式化
set formatoptions=tcrqn
" 继承前一行的缩进方式，特别适用于多行注释
set autoindent
" 制表符为4
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set expandtab
" 换行
set wrap
" 在行和段开始处使用制表符
set smarttab

"显示行号
set number

" 把 F8 映射到 启动NERDTree插件  
map <F8> :NERDTree<CR>

" Pydiction
filetype plugin on
let g:pydiction_location = '~/.vim/dict/complete-dict'
