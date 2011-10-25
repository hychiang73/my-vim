" Maintain : Hisao Yu Chiang
"
" Mail : dickychiang73@gamil.com
"
" Date : 2011/6/22
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=300

" Enable filetype plugin
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

" always show the mouse
"set mouse=a
set mouse=nv

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set background=dark
colorscheme xemacs
"colorscheme eclipse
"colorscheme darkZ
syntax on
"set t_Co=256
syntax enable
"Default file types
set ffs=unix,dos,mac 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files and backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set lbr
set tw=500
"Auto indent
set ai 
"Smart indet
set si 
"Wrap lines
set wrap 
"C indent
set cin

""""""""""""""""""""""""""""""
" => Statusline
""""""""""""""""""""""""""""""
" Always hide the statusline
set laststatus=2

" Format the statusline
"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%h\ \ \ Line:\ %l/%L:%c

""""""""""""""""""""""""""""""
" => Chinese solution
""""""""""""""""""""""""""""""
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
"set fileformats=unix

""""""""""""""""""""""""""""""
" => tools setting
""""""""""""""""""""""""""""""
"""""""Taglist"""""""   
let Tlist_Show_One_File=1
let Tlist_Use_Right_Window=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Auto_Open=0
nmap <F2> :Tlist<CR>

"""""""WinManager"""""""
let g:winManagerWindowLayout='FileExplorer|TagList'
let g:winManagerWindowLayout='FileExplorer'
nmap wm :WMToggle<CR>

"""""""QuickFix"""""""
nmap <F4> :cw<CR>
nmap <F5> :cn<CR>
nmap <F6> :cp<CR>

"""""""Grep command"""""""
nnoremap <silent> <F3> :Grep<CR>

"""""""MiniBufExplorer"""""""
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1

"""""""Fast Change c/h file between"""""""
nnoremap <silent> <F12> :A<CR>

"""""""Switch buffer file"""""""
nnoremap <F7> :e#<CR>

"""""""Cscope"""""""
set cscopequickfix=s-,c-,d-,i-,t-,e-
" 搜尋游標上的 function 哪邊參考到
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
" 搜尋游標上的 function 是在哪邊定義的
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
" 搜尋游標上的 function 哪邊呼叫到
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>

"""""""Trinity"""""""
" Open and close all the three plugins on the same time 
nmap <F8> :TrinityToggleAll<CR> 
" Open and close the srcexpl.vim separately 
nmap <F9> :TrinityToggleSourceExplorer<CR> 
" Open and close the taglist.vim separately 
nmap <F10> :TrinityToggleTagList<CR> 
" Open and close the NERD_tree.vim separately 
nmap <F11> :TrinityToggleNERDTree<CR> 

""""" Project Item
"Panther 
set tags=/home/dickychiang/works/Panther/TI_Android_GingerBread_2_3_4Sources/kernel
set tags=/home/dickychiang/works/Panther/TI_Android_GingerBread_2_3_4Sources/hardware/ti/wlan/mac80211/compat
cs add /home/dickychiang/works/Panther/TI_Android_GingerBread_2_3_4Sources/kernel/cscope.out /home/dickychiang/works/Panther/TI_Android_GingerBread_2_3_4Source/kernel
cs add /home/dickychiang/works/Panther/TI_Android_GingerBread_2_3_4Sources/hardware/ti/wlan/mac80211/compat/cscope.out /home/dickychiang/works/Panther/TI_Android_GingerBread_2_3_4Sourcehardware/ti/wlan/mac80211/compat

