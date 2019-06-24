set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'tmhedberg/SimpylFold'

Plugin 'vim-scripts/indentpython.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'w0rp/ale'

" Python auto complete
Bundle 'Valloric/YouCompleteMe'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

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
"
" Key ReMapping
"
""split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Enable folding with the spacebar
nnoremap <space> za


syntax on
set autoindent
"set visualbell
set ruler
"
set showmatch
"
set background=dark


set foldlevel=99
" SimpylFold: show doc string
let g:SimpylFold_docstring_preview=1

" PEP 8 for python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set fileformat=unix

set encoding=utf-8

" YouCompleteMe settings
" Ensure auto complete window go away when done
let g:ycm_autoclose_preview_window_after_completion=1
" let g:ycm_autoclose_completion_window_after_selecting=1

" '<leader>-g' go to definition
map <C-G>  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1

" Always show status line in vim
set laststatus=2

" Open NerdTree by default
"autocmd vimenter * NERDTree
" Open NerdTree when no args to vi
function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()
" Close VIM when NerdTree is the last window
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let NERDTreeShowHidden=1
