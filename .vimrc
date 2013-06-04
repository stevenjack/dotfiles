set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set incsearch
set nu
set formatoptions+=rco

if has("multi_byte")
 if &termencoding == ""
   let &termencoding = &encoding
 endif
 set encoding=utf-8                     " better default than latin1
 setglobal fileencoding=utf-8           " change default file encoding when writing new files
endif

syntax enable
set background=dark
colorscheme solarized

filetype plugin on
filetype plugin indent on

autocmd FocusLost * :set number
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
autocmd CursorMoved * :set relativenumber
