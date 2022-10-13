syntax enable
" colorschemes changed with vim 9.0 and delek is now light background
if v:version >= 900
  colorscheme desert
else
  colorscheme delek
endif
" use fd to get out of insert mode
inoremap fd <Esc>
set nowrap        " don't soft-wrap lines
set tabstop=2
set softtabstop=2
set expandtab
set autoindent
set copyindent    " copy previous indentation
set number
set ruler
set backspace=indent,eol,start
set wildmode=longest,list
"set wildmenu      " visual autocomplete for commands
set showmatch     " highlight matching paren-like characters
set incsearch     " search as characters are typed
set hlsearch      " highlight search matches
let mapleader="," " change leader from \ to comma
" remove previous search highlights
nnoremap <leader><space> :nohlsearch<CR>
