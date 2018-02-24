set incsearch
set smartcase
set hlsearch

set autoindent
set smartindent
set smarttab
set number

set expandtab
set foldmethod=indent
set shiftwidth=2
set tabstop=2

syn on

noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>
