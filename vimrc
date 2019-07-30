set exrc
set secure

filetype plugin indent on
set textwidth=75          " maximum of 80 characters per line
set tabstop=4             " 1 tab = 4 spaces
set softtabstop=4
set shiftwidth=4          " for when you use << and >>
set noexpandtab
set autoindent            " on newline, keep current indentation
set scrolloff=5

syntax enable
set background=dark
colorscheme elflord

set number
set numberwidth=5
highlight LineNr term=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

nnoremap <F2> :!valgrind ./
nnoremap <F3> :!./
nnoremap <F4> :make!<cr>
nnoremap <F5> :w<enter>
nnoremap <F6> :xa<enter>
nnoremap <F7> :tabp<enter>
nnoremap <F8> :tabn<enter>
nnoremap <F9> :tabe 
nnoremap <F10> :!cd .. && make<cr>

