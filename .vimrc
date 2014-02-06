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

"Vundle setup
set rtp+=$HOME/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
filetype plugin indent on

"Bundles

Bundle 'kien/ctrlp.vim'

Bundle 'tpope/vim-fugitive'

Bundle 'scrooloose/nerdtree'
map <leader>' :NERDTreeToggle<cr>

Bundle 'bling/vim-airline'

Bundle 'edkolev/tmuxline.vim'

" Ack (uses Ag behind the scenes)
Bundle 'mileszs/ack.vim'
let g:ackprg = 'ag --nogroup --nocolor --column'

" Surround text with HTML or punctuation
Bundle 'tpope/vim-surround'

" Surround text with HTML or punctuation
Bundle 'tpope/vim-surround'

" Tabularize
Bundle 'godlygeek/tabular'
map <Leader>e :Tabularize /=<cr>
map <Leader>c :Tabularize /:<cr>
map <Leader>es :Tabularize /=\zs<cr>
map <Leader>cs :Tabularize /:\zs<cr>

"Automatically remove trailing whitespace
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType php,ruby autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
