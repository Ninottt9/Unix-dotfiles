set autoread                                     " reload on external file changes
set backspace=indent,eol,start                   " backspace behaviour
set clipboard=unnamed,unnamedplus                " enable clipboard
set encoding=utf8                                " enable utf8 support
set hidden                                       " hide buffers, don't close
set mouse=a                                      " enable mouse support
set nowrap                                       " disable wrapping
set number                                       " show line numbers
set term=xterm-256color                          " terminal type
set wildmenu wildmode=longest:full,full          " wildmode settings

filetype plugin indent on                        " enable filetype detection
set listchars=eol:¶,trail:•,tab:▸\               " whitespace characters
set scrolloff=999                                " center cursor position vertically
set showbreak=¬\                                 " Wrapping character
set showmatch                                    " show matching brackets
syntax on                                        " enable syntax highlightning

colorscheme onedark                              " set colorscheme
hi Normal guibg=NONE ctermbg=NONE|               " transparency fix
let g:onedark_termcolors=256                     " enable 256 colors support

set laststatus=0                                 " disable statusline
set ruler rulerformat=%40(%=%<%F%m\ \
                      \›\ %{getfsize(@%)}B\ \
                      \›\ %l/%L:%v%)
set autoindent expandtab                         " autoindentation & tabbing
set shiftwidth=2 softtabstop=2 tabstop=2         " 1 tab = 2 spaces

set hlsearch ignorecase incsearch smartcase      " search options

set nobackup noswapfile nowritebackup            " disable backup/swap files
set undofile undodir=~/.vim/undo undolevels=9999 " undo options

set lazyredraw                                   " enable lazyredraw
set nocursorline                                 " disable cursorline
set ttyfast                                      " enable fast terminal connection

let mapleader=','                                " leader key

nnoremap <leader>, :let @/='':noh# :g/\v^(#\|$)/d_b :ls:bufferd :w !diff % - i gg=G``l :set list! list?n :set invnumber number?p :set invpaste paste?r :retabs :source $MYVIMRC t :%s/\s\+$//ew :set wrap! wrap?

cnoreabbrev w!! w !sudo tee > /dev/null %|       " write file with sudo
