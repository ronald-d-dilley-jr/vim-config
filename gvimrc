:hi Comment cterm=bold
set shiftwidth=4
set noic
set noai
set hls
set wrap
set guifont=Monospace\ Bold\ 9
"set guifont=Courier\ 10\ Pitch\ Bold\ 7
"set guifont=Bitstream\ Vera\ Sans\ Mono\ Bold\ 7
set background=dark
set mousehide
set guioptions=aegimrLt

set list
set listchars=tab:>.,trail:.,nbsp:.

set cursorline

set lines=50
set columns=80

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

let python_highlight_all = 1

au BufNewFile,BufRead  *.odl,*.omf  setf msidl
au BufNewFile,BufRead  *.bash-*  set filetype=sh
au BufNewFile,BufRead  crontab.cron  set filetype=crontab
colorscheme desert
set dir=/var/tmp

nmap <F3> ggVG!python -mjson.tool<CR>
nmap <F4> ggVGJ

:hi CursorLine   guibg=grey20
:hi CursorColumn guibg=grey20
:nnoremap <Leader>cl :set cursorline!<CR>
:nnoremap <Leader>cc :set cursorcolumn!<CR>

:hi SpecialKey guifg=#ff0000 guibg=#ffbbbb
