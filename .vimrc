call pathogen#infect()
syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

set nocp                          " Set not compatible
set showmode                      " Display the mode you're in.
set backspace=indent,eol,start    " Intuitive backspacing.
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set number                        " Show line numbers.
set ruler                         " Show cursor position.
set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.
set nowrap                        " Turn on line wrapping.
set visualbell                    " No beeping.
set tabstop=2                     " Global tab width.
set shiftwidth=2                  " And again, related.
set expandtab                     " Use spaces instead of tabs

set wildignore+=*/vendor/bundle/*,*/public/system/*,*/node_modules/*,*/tmp/*,*/log/*,*/.git/*,*.so,*.swp " ctrl-p, ignore these files please

let $JS_CMD='node'                      " Use Node.js for JavaScript interpretation
let coffee_compiler = '/usr/bin/coffee' " Set the path to coffee
let coffee_no_trailing_space_error = 1

colorscheme jellybeans

" stop arrow keys working in insert mode!
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
