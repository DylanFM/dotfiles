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

set laststatus=2                  " Not sure exactly what this does, but it keeps vim-airline in view
let g:airline_theme='simple'      " vim-airline's theme
set noshowmode                    " Disable regular staus line

set wildignore+=*/vendor/bundle/*,*/public/system/*,*/node_modules/*,*/tmp/*,*/log/*,*/.git/*,*.so,*.swp " ctrl-p, ignore these files please

let $JS_CMD='node'                      " Use Node.js for JavaScript interpretation
let coffee_compiler = '/usr/bin/coffee' " Set the path to coffee
let coffee_no_trailing_space_error = 1
let g:ackprg = 'ag --nogroup --nocolor --column' " Use The Silver Searcher (ag) instead of ack

set t_Co=256 " Use 256 colours

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

highlight clear SignColumn " sign column should be background colour

" Sign column should always be shown, so gitgutter doesn't flash on save etc
sign define dummy
execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
