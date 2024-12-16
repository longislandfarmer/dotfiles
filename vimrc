" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')

if $FZFVIMPATH != ""
    Plug $FZFVIMPATH
else
    Plug '~/.fzf'
endif
Plug 'junegunn/fzf.vim'    "FZF!

Plug 'majutsushi/tagbar'
" Tagbar configs
"let g:tagbar_left = 1
let g:tagbar_width = 50
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_compact = 1
let g:tagbar_sort = 0

Plug 'bling/vim-airline'              " Airline status bar
Plug 'vim-airline/vim-airline-themes' " Airline schemes
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1
" Plug 'edkolev/tmuxline.vim'           " tmuxline to make tmux consistent with vim
" let g:tmuxline_powerline_separators = 0 " We don't have powerline fonts

Plug 'mileszs/ack.vim'                " ack
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

Plug 'flazz/vim-colorschemes'         " a lot of color schemes
Plug 'tpope/vim-commentary'           " Commenting/Uncommenting
Plug 'hynek/vim-python-pep8-indent'   " make python code indent like PEP8
Plug 'ntpeters/vim-better-whitespace' " white-space
Plug 'mjnicky/vim-cpp-enhanced-highlight' " cpp highlight
Plug 'tpope/vim-dispatch'  " dispatch commands in tmux pane async


call plug#end()


colorscheme jellybeans
syntax on
set t_Co=256
hi Normal ctermbg=NONE
hi nonText ctermbg=NONE

set expandtab                   " By default, expand tabs to spaces
set shiftwidth=4                " Indents using tab, indenting etc default to 4
set softtabstop=4               " Tab/backspace "feel" as if inserting/deleting a full tab
set tabstop=4                   " Tabs (if present) are displayed as 4 spaces

set autoindent                  " Indent lines automatically
set smartindent                 " ...and try to be smart about it
set cindent
set cinoptions=g0.5sh0.5sN-s    " half indent for public: and private:, no indent for namespaces.
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

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
set undodir=~/.vim/backup_files              " in here
set history=1000                             " 1000 command history
set backupdir=~/.vim/backup_files
set directory=~/.vim/backup_files

set mouse=a

" search for ctags tag file from current folder up to the root folder
set tags=./tags;/
" switch Ctrl + ] and g + Ctrl + ], so that the default jump shows a list for
" multiple candidates
nnoremap <c-]> g<c-]>
vnoremap <c-]> g<c-]>
nnoremap g<c-]> <c-]>
vnoremap g<c-]> <c-]>

let mapleader=","                   " mapleader ','
let g:mapleader=","                 " map leader

" Normal mode maps
nnoremap <space> 5jzz
nnoremap <backspace> 5kzz
nnoremap <leader>v :History<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>r :Files %:h<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>lt :TagbarToggle<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>d :bd<CR>
nnoremap <leader>m :bnext<CR>
nnoremap <leader>n :bprevious<CR>
nnoremap <leader>s :AckFromSearch<CR>
nnoremap <c-s> <nop>
",a to swithc to .h or .cpp file
nnoremap <leader>a :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" Input mode maps
" map CTRL-E to end-of-line (insert mode)
inoremap <C-e> <esc>$i<right>
nnoremap <C-e> $
" map CTRL-A to beginning-of-line (insert mode)
inoremap <C-a> <esc>^i
nnoremap <C-a> ^
