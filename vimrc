execute pathogen#infect()

:hi Comment cterm=bold
set shiftwidth=4
set noic
set noai
set hls
set wrap
set guifont=Courier\ Primal\ 11
"set guifont=Monospace\ Bold\ 12
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
au BufNewFile,BufRead  *.bash-*  set filetype=sh
au BufNewFile,BufRead  crontab.cron  set filetype=crontab
"au BufNewFile,BufRead  *.py  set filetype=python
colorscheme dilley
set dir=/var/tmp

:hi OverLength ctermbg=red ctermfg=white
match OverLength /\%79v.\+/

" Configure syntastic
"let g:syntastic_python_checkers = ['python', 'pylint', 'pep8']
let g:syntastic_python_checkers = ['prospector']
let g:syntastic_error_symbol = 'X'
let g:syntastic_warning_symbol = '!'

" Only check when requested using F5 key
let g:syntastic_mode_map = { 'mode': 'passive' }
nmap <F5> :SyntasticCheck<CR>
