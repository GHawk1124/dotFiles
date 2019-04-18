" Vimrc File

let mapleader=" "

" Get vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
	 silent !curl -fLo ~/.vim/autoload.plug.vim --create-dirs
	  \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	 autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
call plug#end()

" Some Basics
	set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number
	set tabstop=3
" Allow AutoCompletion
	set wildmode=longest,list,full
" Disables AutoComment on a New Line
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"	autocmd FileType py inoremap ;c class<space><tab><++>
"   inoremap <Space><Space> <Esc>/<++><Enter>"_c4l>	

" Goyo Plugin Bind
	map <leader>f :Goyo \| set linebreak<CR>

" Spell Check
	map <leader>o :setlocal spell! spelllang=en_us<CR>

" Splits at the Bottom and Right
	set splitbelow splitright

" Shortcutting split navigation
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

