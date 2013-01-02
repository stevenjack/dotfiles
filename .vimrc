set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set incsearch
set nu

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
