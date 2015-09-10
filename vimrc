:hi Comment cterm=bold
set shiftwidth=4
set noic
set noai
set hls
set wrap
set guifont=Monospace\ Bold\ 8
"set guifont=Courier\ 10\ Pitch\ Bold\ 7
"set guifont=Bitstream\ Vera\ Sans\ Mono\ Bold\ 7
set background=dark
set mousehide
set guioptions=aegimrLt

set list
set listchars=tab:>.,trail:.,nbsp:.

" Should only use these with gvim since they mess up the terminal
"set lines=50
"set columns=80

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

let python_highlight_all = 1

au BufNewFile,BufRead  *.odl,*.omf  setf msidl
au BufNewFile,BufRead  *.bash_*  set filetype=sh
colorscheme desert
set dir=/var/tmp

