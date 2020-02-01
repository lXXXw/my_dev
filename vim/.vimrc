" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'flazz/vim-colorschemes'
Plug 'connorholyday/vim-snazzy'
Plug 'pseewald/vim-anyfold'
Plug 'ervandew/supertab'
Plug 'lyuts/vim-rtags'
Plug 'ycm-core/YouCompleteMe'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Choose the colorscheme to snazzy which is quite beautiful
colorscheme snazzy
" colorscheme molokai

" Show line number
set number

" Configure for vim-anyfold
filetype plugin indent on " required
syntax on                 " required

autocmd Filetype * AnyFoldActivate               " activate for all filetypes

set foldlevel=0  " close all folds

set hlsearch

set cursorline
set cursorcolumn
hi CursorLine   ctermbg=darkred ctermfg=white

set colorcolumn=100,120

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set showcmd

set backspace=indent,eol,start
set encoding=utf-8

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

set cpt-=t
map <C-f> <C-r>0<ESC>

" Config for vim-rtags
" Show results in vim QuickFix window
let g:rtagsUseLocationList = 0

highlight ExtraWhitespace ctermbg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" YouCompleteMe
let g:ycm_use_clangd = 0
let g:ycm_confirm_extra_conf = 0
" Code navigation with Ctrl-] , use Ctrl-O to get back to previous location
nnoremap <silent> <C-]> :YcmCompleter GoTo<CR>

let g:ycm_autoclose_preview_window_after_completion = 1

" when open a new file, the tab auto-complete should behave like bash
set wildmenu
set wildmode=longest:full,full

" Disable vim bell
set visualbell
set t_vb=
