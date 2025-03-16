" be iMproved, it's 21st Century ;-)
"
set nocompatible
syntax on
set number

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                   SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" make backspaces delete sensibly
set backspace=indent,eol,start

" to autosave buffer (useful when switching between buffer)
set autowrite

" configure the invisible chars
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" ignore case if search pattern is all lowercase,
"    case-sensitive otherwise (both smartcase and ignorecase needed)
set smartcase
set ignorecase

" to keep backup and swap files in my home dir
"set backupdir=~/.vim/tmp/                   " for the backup files
"set directory=~/.vim/tmp/                   " for the swap filesi

"
" Netrw

" absolute width of netrw window
let g:netrw_winsize = -28

" tree-view
let g:netrw_liststyle = 3

" sort is affecting only: directories on the top, files below
let g:netrw_sort_sequence = '[\/]$,*'

" open file in a new tab
let g:netrw_browse_split = 3

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lightline

let g:lightline = { 'colorscheme': 'solarized', }               "vim-lightline
set laststatus=2                                                "vim-lightline
set noshowmode                                                  "vim-lightline


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Solarized

let g:solarized_contrast="high"                                 "vim-colors-solarized
set background=dark
" set t_Co=256                                                  "vim-colors-solarized
"colorscheme solarized                                           "vim-colors-solorized


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editorconfig

" don't have vim compiled with python => use external editorconfig
let g:EditorConfig_core_mode = 'external_command'               "editorconfig-vim


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabular

" Align on equal sign
vnoremap <silent> <Leader>cee    :Tabularize /=<CR>              "tabular
" Align on # sign (comment)
vnoremap <silent> <Leader>cet    :Tabularize /#<CR>             "tabular
" Align (no sign)
vnoremap <silent> <Leader>ce     :Tabularize /
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-markdown-previw

let vim_markdown_preview_toggle=3

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                   KEYS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General

let mapleader = ','

" use jj to quickly escape to normal mode while typing <- AWESOME tip
inoremap jj <ESC>

" insert newline without entering insert mode
map <CR> o<Esc>k

" reloads .vimrc -- making all changes active
map <silent> <Leader>v :source ~/.vimrc<CR>:PlugInstall<CR>:bdelete<CR>:exe ":echo 'vimrc reloaded'"<CR>

" ~revent the annoying help screen when missing esc on my laptop keyboard
map <F1> <Esc>
imap <F1> <Esc>

" the write sudo trick made easy (for those, like me, who always forget the syntax)
cmap w!! %!sudo tee > /dev/null %


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader C prefix is for code related mappings (completion, tidy, documentation...)

noremap <silent> <Leader>cc          :TComment<CR>              "tcomment_vim


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader F prefix is for file related mappings (open, browse...)

nnoremap <silent> <Leader>f :CtrlP<CR>                          "ctrlp.vim
nnoremap <silent> <Leader>fm :CtrlPMRU<CR>                      "ctrlp.vim

" don't need NerdTree, Netrw is enough for me
nnoremap <silent> <Leader>fe :Lexplore <CR>
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader B prefix is for buffer related mappings

nnoremap <silent> <Leader>b  :CtrlPBuffer<CR>                   "ctrlp.vim
nnoremap <silent> <Leader>bb :bn<CR>
nnoremap <silent> <Leader>bd :bdelete<CR>
"nnoremap <silent> <Leader>p  :e#<CR>

" (un)lock the current buffer to prevent modification
nnoremap <silent> <Leader>bl :set nomodifiable<CR>
nnoremap <silent> <Leader>bu :set modifiable<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader G prefix is for SCM (mainly git) related mappings

" Settings keys
noremap <TAB> ) 
noremap <SPACE> <C-F>
abb _ys YoungStart
comm! Wc !wc %
"set hls
"set clipboard=unnamedplus
set tabstop=2

" go to file
"nnoremap <C-f> mz*ggn0f’f"gf
"map <Leader>3 :b#<CR> “ Alternate buffer


let g:python3_host_prog  = '/usr/local/bin/python3'
let g:jedi#goto_command = "<C-]>"

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories = ["~/.vim/plugged/vim-snippets/snippets/"]

" Ale
let g:ale_enabled = 0
let b:ale_fixers = {'javascript': ['standard'], 'python': ['black']}
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '❗ '
let g:ale_linters = {'python': ['flake8']}
let g:ale_python_flake8_executable = 'python3'
"let g:ale_completion_enabled = 1
" Theme
"colorscheme solarized8_dark
