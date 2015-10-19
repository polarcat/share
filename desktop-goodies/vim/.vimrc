map <F1>	<ESC>:resize -1<CR>
map <F2>	<ESC>:resize +1<CR>

map <F3>	<ESC>:bprev<CR>
map <F4>	<ESC>:bnext<CR>
map <F5>	<ESC>:buffers<CR>
map <F6>	<ESC>:runtime /usr/share/vim/vim70/macros/justify.vim<CR>
map <F7>	<ESC>:source $HOME/.vimrc.d/macros/tab4.vim<CR>
map <F8>	<ESC>:source $HOME/.vimrc.d/macros/tab8.vim<CR>
map <F9>	<ESC>:source $HOME/.vimrc.d/macros/tab2.vim<CR>

map <F10>	<ESC>:file<CR>
map <F11>	<ESC>:source $HOME/.vimrc.d/macros/rws.vim<CR>
map z		<ESC>:undo<CR>
map u		<ESC>:"not mapped"<CR>

vmap <C-c>	<ESC>:w !clipboard<CR><CR>

set nottybuiltin
set term=xterm
set ignorecase
set clipboard=exclude:.*
set nobackup
set nonumber
set nocopyindent
set ruler
set nojoinspaces
syntax on
set mouse=""
set syntax=sh
set backspace=indent,eol,start
set autoindent
set noai
runtime $HOME/.vim/plugin/justify.vim
source $HOME/.vimrc.d/macros/rws.vim

highlight RedundantWhitespace ctermbg=red
highlight Search ctermbg=grey ctermfg=black
match	  RedundantWhitespace /\s\+$\| \+\ze\t/
set textwidth=78
set formatoptions+=t
set nospell
set nopaste
set tags=./tags,tags,./tags0,tags0,./tags1,tags1

au BufRead,BufNewFile *.qml set filetype=qml
au! Syntax qml source $HOME/.vim/plugin/qml.vim
