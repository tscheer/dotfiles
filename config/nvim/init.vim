" Neovim initialization file

" My default settings
set tabstop=2       " tabstop = 2 spaces
set shiftwidth=2    " shiftwidth = 2 spaces
set shiftround      " when '<' and '>' round indents to multiple of shiftwidth
set expandtab       " expand tabs to spaces
set ruler           " enable ruler
set visualbell      " use visual bells
set showcmd         " show commands as they are typed
set fileformats+=mac  " enable support for mac file formats
set hidden          " allow modified buffers to be hidden
set pastetoggle=<F2>  " setup a key to toggle the paste mode
set timeout         " timeout waiting for key sequence completion
set timeoutlen=100  " timeout in 0.1 sec

"
" scrolling 
"
if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif

"
" break indent wrapping
"
if has("linebreak")
  set breakindent
  set breakindentopt=shift:2
endif

"
" Make searches case-insensitive except when uppercase letters
" are included.  Thus /foo matches FOO and foo, but /FOO only
" matches FOO
"
set ignorecase  " case of normal letters are ignored
set smartcase   " ignore case when pattern only has lower case letters

" map F6/C-L to turn off highlights
nmap <F6> :nohlsearch<CR>
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

" map fd to the ESC key.  This provides a quick home row key to
" access the Escape without reaching or using CTRL+[
inoremap fd <ESC>

" change the leader key to <SPACE>.  This is a little easier to access than '\'
let mapleader="\<Space>"

"
" :command to make it easier to open common files
"
:command Otodo :e ~/Dropbox/notebook/todo.adoc
:command Opomo :e ~/Dropbox/notebook/pomodoro.txt
:command Opomodoro :e ~/Dropbox/notebook/pomodoro.txt
