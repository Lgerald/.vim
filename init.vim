" Don't try to be vi compatible 
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off
filetype plugin indent on

" leader key = space
let mapleader = " "

" Load plugins here (pathogen or vundle)
call plug#begin('~/.config/nvim/plugged') 

Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'akiomik/git-gutter-vim'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'elzr/vim-json'
Plug 'othree/jspc.vim'
Plug 'powerline/powerline-fonts'
Plug 'ryanoasis/vim-devicons'
Plug 'w0rp/ale'
Plug 'bling/vim-airline'
Plug 'vim-syntastic/syntastic'

call plug#end()

" Turn on syntax highlighting
syntax on

" Built in vim settings
set modelines=0 " Security
set number " Show line numbers
set ruler " Show file stats
set visualbell " Blink cursor on error instead of beeping (grr)
set cursorline    " highlight current line
set noswapfile    " Disables making temporary backup files (.swp)
set encoding=utf-8   " Use Utf-8
scriptencoding utf-8
set hlsearch        " Highlight previous search pattern
set ignorecase      " Ignore case in search pattern
set smartcase       " ^ But be smart about it
set backspace=indent,eol,start  " Make backspace key work as expected

" Faster Navigation
nnoremap H ^
nnoremap L $
nnoremap J 5j
nnoremap K 5k
vnoremap H ^
vnoremap L $
vnoremap J 5j
vnoremap K 5k
onoremap H ^
onoremap L $
onoremap J 5j
onoremap K 5k

" Add Punctuation to end of line or line break
nnoremap <leader><CR> i<CR><Esc>
nnoremap <leader>; $a;<Esc>
nnoremap <leader>, $a,<Esc>
" Add Symbol after Cursor
nnoremap <leader>} a}<Esc>
nnoremap <leader>) a)<Esc>
nnoremap <leader>] a]<Esc>
nnoremap <leader>" a"<Esc>
nnoremap <leader>' a'<Esc>

" to exit terminal mode
:tnoremap <Esc> <C-\><C-n>

" ALE CONIGURATIONS
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'javascript.jsx': ['eslint'],
\   'json': ['eslint'],
\   'python': ['flake8'],
\   'css': ['stylelint'],
\   'scss': ['stylelint'],
\   'vim': ['vint'],
\   'java': ['javac']
\}
let g:ale_fixers = { 
\   'javascript': ['eslint'],
\   'python': ['autopep8', 'yapf'],
\   'css': ['stylelint'],
\   'scss': ['stylelint'],
\   'json': ['prettier'],
\   'markdown': ['prettier']
\}
let g:ale_javascript_prettier_use_local_config = 1

" let g:ale_sign_column_always = 1
" let g:ale_sign_warning = '>>'
" Comment these 2 lines out if your terminal doesn't support emojis
let g:ale_sign_warning = '⚠️'
let g:ale_sign_error = '⛔️'
highlight ALEError ctermbg=none guibg=none cterm=underline gui=underline
highlight ALEWarning ctermbg=none guibg=none cterm=underline gui=underline
" highlight ALEErrorSign guibg='#810000'
" highlight ALEErrorSign guibg='#823838'
highlight clear ALEErrorSign
highlight clear ALEWarningSign
highlight ALEErrorSign guibg='#5F0000' gui=underline
highlight ALEWarningSign guifg='#F1FA8C'
let g:ale_fix_on_save = 1
noremap <C-F>  :ALEFix <CR>
" NERDTree Syntax Highlighting
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:WebDevIconsOS = 'Arch'
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
" Easier Buffer Switching
nnoremap <Leader>h :bp<CR>
nnoremap <Leader>l :bn<CR>
nnoremap <Leader>1 :b1<CR>
nnoremap <Leader>2 :b2<CR>
nnoremap <Leader>3 :b3<CR>
nnoremap <Leader>4 :b4<CR>
nnoremap <Leader>5 :b5<CR>
nnoremap <Leader>6 :b6<CR>
nnoremap <Leader>7 :b7<CR>
nnoremap <Leader>8 :b8<CR>
nnoremap <Leader>9 :b9<CR>

