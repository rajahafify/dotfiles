execute pathogen#infect()
filetype plugin on
filetype indent on

let mapleader=","

colorscheme monokai

set relativenumber
set background=dark
set clipboard=unnamed
set cursorline
set expandtab
set hlsearch
set nowrap
set noswapfile
set number
set shiftwidth=2
set showmatch
set smarttab
set t_Co=256
set tabstop=2
set laststatus=2
set ttimeoutlen=50
set shell=bash

syntax enable

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-i>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<C-c>'
let g:airline_powerline_fonts=1
let NERDTreeShowHidden=1
let g:rspec_command = "!rspec --drb {spec}"

map <C-k> <plug>NERDTreeTabsToggle<CR>
let g:ackprg = 'ag --vimgrep'
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
"
" " Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'


" This allows buffers to be hidden if you've modified a buffer.
" " This is almost a must if you wish to use buffers in this way.
set hidden
"
" " To open a new empty buffer
" " This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>
"
" " Move to the next buffer
nmap <leader>l :bnext<CR>
"
" " Move to the previous buffer
nmap <leader>h :bprevious<CR>
"
" " Close the current buffer and move to the previous one
" " This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
"
" " Show all open buffers and their status
nmap <leader>bl :ls<CR>

function! StartUp()
  if 0 == argc()
    NERDTree
  end
endfunction

autocmd VimEnter * call StartUp()
autocmd VimEnter * wincmd p
autocmd FileType scss set iskeyword+=-
