" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go'
Plug 'godlygeek/tabular'
Plug 'benmills/vimux'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'elmcast/elm-vim'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'

call plug#end()

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
let g:airline_theme='solarized'   " vim-airline's theme
let g:airline_powerline_fonts = 1 " Use powerline separators from patched font
set noshowmode                    " Disable regular staus line

set wildignore=*/.sass-cache/*,*/node_modules/*,*/bower_components/*,*/tmp/*,*/log/*,*/.git/*,*.so,*.swp " ctrl-p, ignore these files please

let $JS_CMD='node'                      " Use Node.js for JavaScript interpretation
let coffee_compiler = '/usr/bin/coffee' " Set the path to coffee
let coffee_no_trailing_space_error = 1

set t_Co=256 " Use 256 colours

set background=dark
colorscheme solarized

" Syntastic
" let g:syntastic_<filetype>_checkers = ['<checker-name>']
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Quiet this ERB warning
let g:syntastic_eruby_ruby_quiet_messages =
    \ {'regex': 'possibly useless use of a variable in void context'}

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

" Trigger fzf
nnoremap <leader>f :Files<cr>

highlight clear SignColumn " sign column should be background colour

" Sign column should always be shown, so gitgutter doesn't flash on save etc
sign define dummy
execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
" Specify a directory for plugins

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
