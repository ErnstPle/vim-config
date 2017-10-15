" Set up taken from https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
" With this set-up you can install plugins by simply use the command :PluginInstall
"hihi

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase


" Disable backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile


set nocompatible              " required
filetype off                  " required


" Unnecessary Whitespace
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/


set nu " insert line numbering
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" -----------------------------------------------------------
"split navigations 
"Ctrl-j move to the split below
"Ctrl-k move to the split above
"Ctrl-l move to the split to the right
"Ctrl-h move to the split to the left
"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding and use the space key instead of the za command
 set foldmethod=indent
 set foldlevel=99
 " Enable folding with the spacebar
 nnoremap <space> za

" Proper PEP8 indentation
" au BufNewFile,BufRead *.py
"     \ set tabstop=4
"     \ set softtabstop=4
"     \ set shiftwidth=4
"     \ set textwidth=79
"     \ set expandtab
"     \ set autoindent
"     \ set fileformat=unix

" Real programmers don't use TABs but spaces, above does not work
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" UTF8 Support
set encoding=utf-8

" Bundle 'Valloric/YouCompleteMe'
" let g:ycm_autoclose_preview_window_after_completion=1
" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" python with virtualenv support
" py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
"      project_base_dir = os.environ['VIRTUAL_ENV']
"      activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"      execfile(activate_this, dict(__file__=activate_this))
" EOF

let python_highlight_all=1
syntax on

"----------------------------------------
 " Plugins for VIM
 " Use the SimpylFold to do that
Plugin 'tmhedberg/SimpylFold'

" Autoindent will help but in some cases (like when a function signature spans
" multiple lines), it doesn’t always do what you want, especially when it
" comes to conforming to PEP8 standards. To fix that, we can use the
" indentpython.vim extension:
Plugin 'vim-scripts/indentpython.vim'

Plugin 'scrooloose/syntastic'

Plugin 'nvie/vim-flake8'

" Solarizd for GUI mode, Zenburn for terminal mode
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

if has('gui_running')
	  set background=dark
	    colorscheme solarized
else
	      colorscheme zenburn
endif

" Nerdtree is a file explorer
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Super Searching
Plugin 'kien/ctrlp.vim'

Plugin 'tpope/vim-fugitive' " Git integration
