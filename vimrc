set exrc
set secure

filetype plugin indent on
set textwidth=80          " maximum of 80 characters per line
set colorcolumn=81        " show the 81st line clearly
set tabstop=8             " 1 tab = 8 spaces
set softtabstop=8
set shiftwidth=8          " for when you use << and >>
set noexpandtab
set autoindent            " on newline, keep current indentation
set scrolloff=5

syntax enable
set background=dark
colorscheme elflord

set number
set numberwidth=5
highlight LineNr term=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

match Error /\s\s*\n/
set list
set listchars=tab:>-
highlight SpecialKey guifg=red ctermfg=red

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
map <special> <F12> :set filetype=singular<cr>

