set nocompatible              " required
filetype off                  " required
set encoding=utf-8

let python_highlight_all=1
syntax enable
set background=dark

set nu

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'



" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Python Stuff
au BufNewFile,BufRead *.py set tabstop=4 
au BufNewFile,BufRead *.py set softtabstop=4 
au BufNewFile,BufRead *.py set shiftwidth=4 
au BufNewFile,BufRead *.py set textwidth=79 
au BufNewFile,BufRead *.py set expandtab 
au BufNewFile,BufRead *.py set autoindent 
au BufNewFile,BufRead *.py set fileformat=unix 

" C Stuff
au BufNewFile,BufRead *.h,*.c set tabstop=4
au BufNewFile,BufRead *.h,*.c set softtabstop=4
au BufNewFile,BufRead *.h,*.c set shiftwidth=4
au BufNewFile,BufRead *.h,*.c set noexpandtab


" Web dev stuff
au BufNewFile,BufRead *.js,*.html,*.css set tabstop=2 
au BufNewFile,BufRead *.js,*.html,*.css set softtabstop=2 
au BufNewFile,BufRead *.js,*.html,*.css set shiftwidth=2 
