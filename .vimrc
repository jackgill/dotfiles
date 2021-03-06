set nocompatible

set nobackup
set nowritebackup

set tabstop=2
set shiftwidth=2
set expandtab

filetype plugin indent on

execute pathogen#infect()

imap jj <Esc>
set nohlsearch

autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
