" cscope settings
noremap <leader>cs :cs find s 
noremap zs :cs find s <C-R>=expand("<cword>")<CR><CR>
noremap zg :cs find g <C-R>=expand("<cword>")<CR><CR>
noremap zc :cs find c <C-R>=expand("<cword>")<CR><CR>
noremap zd :cs find d <C-R>=expand("<cword>")<CR><CR>
noremap zt :cs find t <C-R>=expand("<cword>")<CR><CR>
noremap ze :cs find e <C-R>=expand("<cword>")<CR><CR>
noremap zf :cs find f <C-R>=expand("<cfile>")<CR><CR>
noremap zi :cs find i <C-R>=expand("<cfile>")<CR><CR>

" =========================================================================

" NERDTree settings
let g:nerdtree_tabs_open_on_console_startup=1
"autocmd VimEnter * NERDTree
nmap nt :NERDTreeToggle <CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" =========================================================================

" MBE settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplMoreThanOne=0
nmap qq :MBEbp<CR>
nmap ww :MBEbn<CR>

" =========================================================================

" Tagbar settings
nmap tt :TagbarToggle<CR>

" Sets how many lines of history VIM has to remember
set history=300

" Set to auto read when a file is changed from the outside
set autoread

set splitright

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

" always show the mouse
set mouse=a
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

syntax on

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
