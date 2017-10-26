"            _
"     _   __(_____ ___  __________
"    | | / / / __ `__ \/ ___/ ___/
"   _| |/ / / / / / / / /  / /__
"  (_|___/_/_/ /_/ /_/_/   \___/
"
"  Vim is sponsered by Diet Coke®
"

set nocompatible
set runtimepath+=~/.vim
set directory^=~/.vim/tmp//

filetype plugin on
filetype indent on
syntax enable
syntax sync minlines=256

colorscheme ev

execute pathogen#infect()

set expandtab
set tabstop=2
set shiftwidth=2
set cmdheight=2
set laststatus=2
set nrformats=
set showcmd
set number
set relativenumber
set autochdir
set t_Co=256
set fillchars+=vert:\ 
set synmaxcol=128
set backspace=indent,eol,start
set incsearch
set shortmess=I
set title
set wildmode=longest,list
set wildmenu
set mouse=r
set clipboard=unnamed
set formatoptions-=cro
set list
set listchars=trail:·,space:·
set textwidth=99
set colorcolumn=-20,+1

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => remappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=','
let maplocalleader=' '

" Source ~/.vimrc while vim is open
nnoremap <leader>sv :source $MYVIMRC<cr>

" Open markdown preview in brower
nnoremap <leader>md :InstantMarkdownPreview<cr>

" `[b` previous buffer
" `]b` next buffer
" `[B` first buffer
" `]B` last buffer
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" `<Ctrl>{char}` moves between window
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Remap line motion commands to operate on display lines
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

" `%%` expands path
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" `gf` opens a file in a vertical split when cursor is on a path
nnoremap gf :vertical wincmd f<CR>

" Remap `<Ctrl-D>` to ⌦
imap <C-d> <Del>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => netrw
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:netrw_list_hide='.*\.DS_Store$'
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_altv = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-jsx
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:jsx_ext_required = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ }

let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'active': {
  \   'left': [ ['mode', 'paste'],
  \             ['fugitive', 'lineinfo'],
  \             ['filename', 'modified'] ],
  \   'right': [ ['percent'],
  \              ['filetype'] ]
  \ },
  \ 'component': {
  \   'filetype': '%{&filetype=="javascript.jsx"?"[JavaScipt]":&filetype==""?" [text]":" [".&ft."]"}',
  \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
  \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
  \ },
  \ 'component_function': {
  \
  \ },
  \ 'component_visible_condition': {
  \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
  \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
  \ },
  \ 'separator': { 'left': ' ', 'right': ' ' },
  \ 'subseparator': { 'left': ' ', 'right': ' ' }
  \ }

" let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
" let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
" let s:palette.inactive.middle = s:palette.normal.middle
" let s:palette.tabline.middle = s:palette.normal.middle

""""""""""""""""""""""""""""""
" => haskell-vim
""""""""""""""""""""""""""""""
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
let g:haskell_indent_case=2
let g:haskell_indent_do=3
let g:haskell_indent_guard=2
let g:haskell_indent_if=3
let g:haskell_indent_in=1
let g:haskell_indent_let=4


""""""""""""""""""""""""""""""
" => instant-markdown
""""""""""""""""""""""""""""""
let g:instant_markdown_autostart = 0      " launch preview when markdown file is opened

