"colorscheme jellybeans
"syntax on
"set t_Co=256
"hi Normal ctermbg=NONE
"hi nonText ctermbg=NONE

let mapleader=","                   " mapleader ','
let g:mapleader=","                 " map leader

set expandtab                   " By default, expand tabs to spaces
set shiftwidth=4                " Indents using tab, indenting etc default to 4
set softtabstop=4               " Tab/backspace "feel" as if inserting/deleting a full tab
set tabstop=4                   " Tabs (if present) are displayed as 4 spaces

set autoindent                  " Indent lines automatically
set smartindent                 " ...and try to be smart about it
set cindent
set cinoptions=g0.5sh0.5sN-s    " half indent for public: and private:, no indent for namespaces.
set backspace=eol,start,indent
"set whichwrap+=<,>,h,l

set scrolloff=8                 "cursor will not reach top/bottom 10 lines
set sidescrolloff=2             " Cursor will not reach left/right N columns
set sidescroll=1                " Scroll across at N chars at a time
set laststatus=2                " Always display a status line for all windows
set matchpairs+=<:>             " Include <> pairs in parenthesis matching

set hlsearch                    " Highlight matches
set incsearch                   " Incremental
set ignorecase                  " Ignore case
set smartcase                   " ...unless there are uppercase letters

set undofile                                 " Enable undo file
set undodir=~/.config/nvim/backup_files              " in here
set history=1000                             " 1000 command history
set backupdir=~/.config/nvim/backup_files
set directory=~/.config/nvim/backup_files

" set mouse=a

" Normal mode maps
nnoremap <space> 5jzz
nnoremap <backspace> 5kzz
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>d :bd<CR>
nnoremap <leader>m :bNext<CR>
nnoremap <leader>n :bprevious<CR>
"nnoremap <c-s> <nop>

" Input mode maps
" map CTRL-E to end-of-line (insert mode)
inoremap <C-e> <esc>$i<right>
nnoremap <C-e> $
" map CTRL-A to beginning-of-line (insert mode)
inoremap <C-a> <esc>^i
nnoremap <C-a> ^
