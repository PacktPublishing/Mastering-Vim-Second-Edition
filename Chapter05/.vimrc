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

" Navigate windows with <Ctrl-hjkl> instead of <Ctrl-w> followed by hjkl.
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

autocmd filetype python set foldmethod=indent " Indentation-based folding.

set wildmenu                    " Enable enhanced tab autocomplete.
set wildmode=list:longest,full  " Complete till longest string, then open menu.

" set number                      " Display column numbers.
" set relativenumber              " Display relative column numbers.

set hlsearch                    " Highlight search results.
set incsearch                   " Search as you type.

set clipboard=unnamed,unnamedplus  " Copy into system (*, +) registers.

" => Chapter 3: Follow the Leader: Plugin Management ------------------ {{{

" Download and install vim-plug (Linux, Mac, and Windows).
" if empty(glob(
"     \ '$HOME/' . (has('win32') ? 'vimfiles' : '.vim') . '/autoload/plug.vim'))
"   execute '!curl -fLo ' .
"     \ (has('win32') ? '\%USERPROFILE\%/vimfiles' : '$HOME/.vim') .
"     \ '/autoload/plug.vim --create-dirs ' .
"     \ 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif

call plug#begin()  " Manage plugins with vim-plug.

Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'

call plug#end()

" noremap ; :           " Use ; in addition to : to type commands.

" noremap <c-u> :w<cr>  " Save using <Ctrl-u> (u stands for update).

" Map arrow keys nothing so I can get used to hjkl-style movement.
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>

" Immediately add a closing quotes or braces in insert mode.
" inoremap ' ''<esc>i
" inoremap " ""<esc>i
" inoremap ( ()<esc>i
" inoremap { {}<esc>i
" inoremap [ []<esc>i

" let mapleader = ','   " Map the leader key to a comma.

" noremap <leader>w :w<cr>  " Save a file with leader-w.

" Set CtrlP working directory to a repository root (with a 
" fallback to current directory).
" let g:ctrlp_working_path_mode = 'ra'

" Remap CtrlP actions to be prefixed by a leader key.
" noremap <leader>p :CtrlP<cr>
" noremap <leader>b :CtrlPBuffer<cr>
" noremap <leader>m :CtrlPMRU<cr>

" => Chapter 4: Understanding the Text -------------------------------- {{{

let g:plug_timeout = 300  " Increase vim-plug timeout for YouCompleteMe.
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }

noremap <leader>] :YcmCompleter GoTo<cr>

set tags=tags;  " Look for a tags file recursively in parent directories.

" Regenerate tags when saving Python files.
autocmd BufWritePost *.py silent! !ctags -R &

Plug 'mbbill/undotree'

call plug#end()

noremap <f5> :UndotreeToggle<cr>  " Map Undotree to <F5>.

" => Chapter 5: Build, Test, and Execute ------------------------------ {{{

Plug 'tpope/vim-fugitive'

" Navigate windows with <Ctrl-hjkl> in terminal job mode.
tnoremap <c-j> <c-w><c-j>
tnoremap <c-k> <c-w><c-k>
tnoremap <c-l> <c-w><c-l>
tnoremap <c-h> <c-w><c-h>

Plug 'christoomey/vim-tmux-navigator'

" Use :make to run pylint for Python files.
autocmd filetype python setlocal makeprg=python3\ -m\ pylint\ --reports=n\ --msg-template=\"{path}:{line}:\ {msg_id}\ {symbol},\ {obj}\ {msg}\"\ %:p
autocmd filetype python setlocal errorformat=%f:%l:\ %m

" Plug 'dense-analysis/ale'

call plug#end()
