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

" select block
" g CTRL+A --> increment selected numbers inside block

set nocompatible
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

highlight ErrorMsg ctermbg=red ctermfg=black
highlight RedundantWhitespace ctermbg=red
highlight Search ctermbg=grey ctermfg=black
match	  RedundantWhitespace /\s\+$\| \+\ze\t/
set textwidth=78
set formatoptions+=t
set nospell
set nopaste
set tags=./tags,tags,./tags0,tags0,./tags1,tags1
set fillchars=vert:\|
set hlsearch

" au BufRead,BufNewFile *.qml set filetype=qml
" au! Syntax qml source $HOME/.vim/plugin/qml.vim


" testing extra-powerline-symbols

" set font terminal font or set gui vim font
" to a Nerd Font (https://github.com/ryanoasis/nerd-fonts):
"set guifont=DroidSansMono\ Nerd\ Font\ 12

" testing rounded separators (extra-powerline-symbols):
" let g:airline_left_sep = "\uE0B4"
" let g:airline_right_sep = "\uE0B6"

" set the CN (column number) symbol:
"let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . "\uE0A3" . '%{col(".")}'])

source $HOME/.vim/autoload/plug.vim

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
" Plug 'mbbill/code_complete'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"set noshowmode
let g:airline_theme='bubblegum'
"let g:airline_theme='papercolor'
let g:airline_theme='minimalist'

" these are not bad !!!

"let g:airline_theme='base16_grayscale'
"let g:airline_theme='base16_ocean'
"let g:airline_theme='base16_pop'
"let g:airline_theme='base16_chalk'
"let g:airline_theme='dark_minimal'

" let g:airline_left_sep = '»'
" let g:airline_left_sep = ''
" let g:airline_right_sep = '«'
" let g:airline_right_sep = ''
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_left_sep = ''
" let g:airline_left_sep = '∷∶∶'
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_sep = '∶∶∷'
" let g:airline_right_alt_sep = ''

let g:airline_symbols.linenr = '№'
let g:airline_symbols.maxlinenr = ' ◄'
let g:airline_symbols.crypt = 'cr'
let g:airline_symbols.whitespace = 'ws'
let g:airline_symbols.branch = '■'
let g:airline_symbols.readonly = '●'
let g:airline_symbols.spell = 'sp'
let g:airline_symbols.notexists = 'ne'
let g:airline_symbols.paste = '□'
let g:airline_left_alt_sep = '□'
let g:airline_left_sep = '▓▒░'
let g:airline_right_sep = '░▒▓'
" let g:airline_right_alt_sep = '□'
let g:airline_right_alt_sep = '■'

autocmd Filetype html set paste
"autocmd Filetype README set paste
autocmd BufRead,BufNewFile README set paste
autocmd BufRead,BufNewFile README set spell

colorscheme pcat
