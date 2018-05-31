" Vundle {{{1

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

set rtp+=~/.fzf
Plugin 'junegunn/fzf.vim'    "FZF!
Plugin 'vim-scripts/a.vim'

Plugin 'majutsushi/tagbar'
" Tagbar configs
"let g:tagbar_left = 1
let g:tagbar_width = 50
let g:tagbar_autoclose = 0
let g:tagbar_autofocus = 1
let g:tagbar_compact = 1
let g:tagbar_sort = 0

Plugin 'SirVer/ultisnips'                    " ultisnipts for snippets templates
let g:UltiSnipsExpandTrigger="<c-j>"         " tab is used by YouCompleteMe, use Ctrl-j to activate
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

Plugin 'mjnicky/vim-snippets'                " My own repo of snippets
let g:ultisnips_python_style="numpy"

Plugin 'tpope/vim-fugitive'

Plugin 'flazz/vim-colorschemes'         " a lot of color schemes

Plugin 'godlygeek/tabular'              " text alignment

Plugin 'bling/vim-airline'              " Airline status bar
Plugin 'vim-airline/vim-airline-themes' " Airline schemes
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1


" Plugin 'edkolev/tmuxline.vim'           " tmuxline to make tmux consistent with vim
" let g:tmuxline_powerline_separators = 0 " We don't have powerline fonts

Plugin 'tomtom/tcomment_vim'            " Commenting/Uncommenting

Plugin 'moll/vim-bbye'                  " Bdelete: close buffer without closing window

Plugin 'hynek/vim-python-pep8-indent'   " make python code indent like PEP8

Plugin 'mileszs/ack.vim'                " ack
let g:ackprg = 'ag --vimgrep'           " use ag for ack

Plugin 'ntpeters/vim-better-whitespace' " white-space

Plugin 'mjnicky/vim-cpp-enhanced-highlight' " cpp highlight

Plugin 'tpope/vim-dispatch'  " dispatch commands in tmux pane async

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Vim Built-in Options {{{1

" Color scheme {{{2

colorscheme jellybeans
syntax on
set t_Co=256
hi Normal ctermbg=NONE
hi nonText ctermbg=NONE

" Tab & Indent settings {{{2
set expandtab                   " By default, expand tabs to spaces
set shiftwidth=4                " Indents using tab, indenting etc default to 4
set softtabstop=4               " Tab/backspace "feel" as if inserting/deleting a full tab
set tabstop=4                   " Tabs (if present) are displayed as 4 spaces

set autoindent                  " Indent lines automatically
set smartindent                 " ...and try to be smart about it
set cindent
set cinoptions=g0.5sh0.5s       " no indent for public: and private:
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


" Display {{{2
set scrolloff=8                 "cursor will not reach top/bottom 10 lines
set sidescrolloff=2             " Cursor will not reach left/right N columns
set sidescroll=1                " Scroll across at N chars at a time
set laststatus=2                " Always display a status line for all windows
set matchpairs+=<:>             " Include <> pairs in parenthesis matching


" Search {{{2
set hlsearch                    " Highlight matches
set incsearch                   " Incremental
set ignorecase                  " Ignore case
set smartcase                   " ...unless there are uppercase letters

" Backup directories {{{2
set undofile                                 " Enable undo file
set undodir=~/.vim/backup_files              " in here
set history=1000                             " 1000 command history
set backupdir=~/.vim/backup_files
set directory=~/.vim/backup_files

" Mouse {{{2
set mouse=a


" Ctags related Stuff {{{1
" search for ctags tag file from current folder up to the root folder
set tags=./tags;/
" Alt + ] : Open definition (ctags) in a new vsplit window
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
" switch Ctrl + ] and g + Ctrl + ], so that the default jump shows a list for
" multiple candidates
nnoremap <c-]> g<c-]>
vnoremap <c-]> g<c-]>
nnoremap g<c-]> <c-]>
vnoremap g<c-]> <c-]>

" Key Mappings {{{1

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
nnoremap <leader>d :Bdelete<CR>
nnoremap <leader>m :bnext<CR>
nnoremap <leader>n :bprevious<CR>
nnoremap <c-s> <nop>
",a to swithc to .h or .cpp file
nnoremap <leader>a :A<CR>

" Input mode maps
" map CTRL-E to end-of-line (insert mode)
inoremap <C-e> <esc>$i<right>
nnoremap <C-e> $
" map CTRL-A to beginning-of-line (insert mode)
inoremap <C-a> <esc>^i
nnoremap <C-a> ^

" vim: foldenable foldmethod=marker:
