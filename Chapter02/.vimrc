" => Chapter 1: Getting Started --------------------------------------- {{{

syntax on                  " Enable syntax highlighting.
filetype plugin indent on  " Enable file type based options.

set nocompatible           " Don't run in backwards compatible mode.

set autoindent             " Respect indentation when starting a new line.
autocmd filetype python set expandtab    " Expand tabs to spaces (for Python).
autocmd filetype python set tabstop=4    " Number of spaces tab is counted for.
autocmd filetype python set shiftwidth=4 " Number of spaces for autoindent.

colorscheme murphy         " Change a colorscheme.

" => Chapter 2: Advanced Movement and Navigation ---------------------- {{{

silent! helptags ALL            " Load help files for all plugins.

" Navigate windows with <Ctrl-hjkl> instead of <Ctrl-w> followed by hjkl.
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

autocmd filetype python set foldmethod=indent " Indentation-based folding.

set wildmenu                    " Enable enhanced tab autocomplete.
set wildmode=list:longest,full  " Complete till longest string, then open menu.

" Plugin-related settings below are commented out. Uncomment them to enable
" the plugin functionality once you download the plugins.

" let NERDTreeShowBookmarks = 1   " Display bookmarks on startup.
" autocmd VimEnter * NERDTree     " Enable NERDTree on Vim startup.
" Autoclose NERDTree if it's the only open window left.
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") &&
"   \ b:NERDTree.isTabTree()) | q | endif

" set number                      " Display column numbers.
" set relativenumber              " Display relative column numbers.

set hlsearch                    " Highlight search results.
set incsearch                   " Search as you type.

set clipboard=unnamed,unnamedplus  " Copy into system (*, +) registers.
