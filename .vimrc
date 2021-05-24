" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

set nocompatible
set number
set hidden
set wildmenu
set hlsearch
set ignorecase
set smartcase
set autoindent
set ruler

filetype plugin on
syntax on

let mapleader = ","

set viminfo+=n~/.vim/viminfo
set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//

let g:terraform_align=1
let g:terraform_fmt_on_save=1

"let g:vimwiki_list = [{'path': '~/vimwiki/',
"                      \ 'syntax': 'markdown', 'ext': '.md'}]
"let g:vimwiki_global_ext = 0
let g:vimwiki_list = [{'auto_diary_index': 1}]
let g:vimwiki_diary_months = {
	\ 1: 'Januar', 2: 'Februar', 3: 'März',
	\ 4: 'April', 5: 'Mai', 6: 'Juni',
	\ 7: 'Juli', 8: 'August', 9: 'September',
	\ 10: 'Oktober', 11: 'November', 12: 'Dezember'
	\ }
let g:calendar_monday = 1
let g:calendar_weeknm = 3 " KW01
let g:calendar_diary=$HOME.'/vimwiki/diary'


" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1
