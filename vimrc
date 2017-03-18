set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" =======================================

Plugin 'scrooloose/nerdtree'
let g:nerdtree_tabs_open_on_console_startup=1
nmap nt :NERDTreeToggle <CR>

Plugin 'taglist.vim'
let Tlist_Show_One_File=1
let Tlist_Use_Right_Window=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Auto_Open=0
nmap tt :Tlist<CR>

Plugin 'minibufexpl.vim' 
let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMoreThanOne=0
map <F9> :MBEbp<CR>
map <F10> :MBEbn<CR>

Plugin 'bling/vim-airline'
set laststatus=2

Plugin 'autoload_cscope.vim'
nmap zs :vert scs find s <C-R>=expand("<cword>")<CR><CR>
nmap zg :vert scs find g <C-R>=expand("<cword>")<CR><CR>
nmap zc :vert scs find c <C-R>=expand("<cword>")<CR><CR>
nmap zt :vert scs find t <C-R>=expand("<cword>")<CR><CR>
nmap ze :vert scs find e <C-R>=expand("<cword>")<CR><CR>
nmap zf :vert scs find f <C-R>=expand("<cfile>")<CR><CR>   
nmap zi :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR> 
nmap zd :vert scs find d <C-R>=expand("<cword>")<CR><CR>


" ======================================

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Sets how many lines of history VIM has to remember
set history=300

" Set to auto read when a file is changed from the outside
set autoread

set splitright

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

" always show the mouse
set mouse=r
"set mouse=nv

"Turn on WiLd menu
set wildmenu

"Always show current position
set ruler 

"Ignore case when searching
set ignorecase 

"Highlight search things
set hlsearch

"Make search act like search in modern browsers
set incsearch

"Set magic on, for regular expressions
set magic 

"Show matching bracets when text indicator is over them
set showmatch

"Show the number line
"set nu

"cursorline : hightlight currentline
set cul

"Auto save current status
if has("autocmd")
      au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  endif

"colorscheme gruvbox
"colorscheme matrix
"colorscheme Monokai-Refined

syntax enable

"set background=dark

set t_Co=256

"Default file types
set ffs=unix,dos,mac 

" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup

set nowb

set noswapfile

set noexpandtab

set shiftwidth=4

set tabstop=4

set softtabstop=4

set autoindent

set smartindent

set modeline

"set list

"set smarttab

"set lbr
"
"set tw=500

"Auto indent
set ai 

"Smart indet
set si 

"Wrap lines
set wrap 

"C indent
set cin

" Chinese solution
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
"set fileformats=unix

" Grep command
"nnoremap <silent> <F3> :Grep<CR>

" Fast Change c/h file between
"nnoremap <silent> <F12> :A<CR>

