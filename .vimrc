""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" Vim and tmux navigation
Plugin 'christoomey/vim-tmux-navigator'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" "Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Set background so that vim looks the same in tmux (?)
set background=dark
" Allow vim to scroll normally (not line by line) and be clickable
set mouse=a
" Exit insert mode with 'jk' literal
inoremap jk <ESC>

" Makes sure syntax (coloring, indentation, etc) is on for various files that
" vim opens up
syntax on
" Show line number on left
set number
" Shows the line and column number at the bottom
set ruler
set hlsearch
"" I like it but it really slows things down
"set relativenumber

" Tabs and indents
set expandtab
set tabstop=4
" set tabstop=3
set shiftwidth=4
set backspace=2
set cindent!
set autoindent

"set switchbuf=newtab
nnoremap <F8> :sbnext<CR>
nnoremap <S-F8> :sbprevious<CR>

nmap <CR> i<CR><Esc>^
nmap <S-Enter> i<CR><Esc>bll

"Sets correct tabbing for latex?
let g:tex_flavor='latex'


colo obsidian
"colo desertEx
"hi Search guibg=peru guifg=wheat
"hi Search ctermfg=white ctermbg=black
"hi Visual guifg=White guibg=LightBlue gui=none
highlight Visual guifg=black guibg=#ffff78 gui=none


" set viminfo='10,\"100,:20,%,n~/.viminfo
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
  let myUndoDir = expand(vimDir . '/undodir')
  " Create dirs
  call system('mkdir ' . vimDir)
  call system('mkdir ' . myUndoDir)
  let &undodir = myUndoDir
  set undofile
endif

"" So that python doesn't have the comment flushed to the left
"au! FileType python setl nosmartindent
"set smartindent!

"" Move up and down displayed line instead of physical line in word wrap mode
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$



"filetype indent plugin on
"filetype plugin on
"set modeline
"set smarttab
"tabstop
"The width of a hard tabstop measured in /"spaces" -- effectively the (maximum)
"width of an actual tab character.
"
"shiftwidth
"The size of an /"indent". It's also measured in spaces, so if your code base
"indents with tab characters then you want shiftwidth to equal the number of
"tab characters times tabstop. This is also used by things like the =, > and <
"commands.
"
"softtabstop
"Setting this to a non-zero value other than tabstop will make the tab key (in
"insert mode) insert a combination of spaces (and possibly tabs) to simulate
"tab stops at this width.
"
"expandtab
"Enabling this will make the tab key (in insert mode) insert spaces instead of
"tab characters. This also affects the behavior of the retab command.
"
"smarttab
"Enabling this will make the tab key (in insert mode) insert spaces or tabs to
"go to the next indent of the next tabstop when the cursor is at the beginning
"of a line (i.e. the only preceding characters are whitespace).
" Keep Plugin commands between vundle#begin/end.
"" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
"" plugin from http://vim-scripts.org/vim/scripts.html
"" Plugin 'L9'
"" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"set noexpandtab " Make sure that every file uses real tabs, not spaces
"set shiftround  " Round indent to multiple of 'shiftwidth'
"set autoindent  " Copy indent from current line, over to the new line
" set cindent!   " cindent flushes comments to the left
"
"" Set the tab width
"let s:tabwidth=2
"au Filetype * let &l:tabstop = s:tabwidth
"au Filetype * let &l:shiftwidth = s:tabwidth
"au Filetype * let &l:softtabstop = s:tabwidth
