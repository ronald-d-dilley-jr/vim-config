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

set cursorline

set lines=50
set columns=82

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

let python_highlight_all = 1

au BufNewFile,BufRead  *.odl,*.omf  setf msidl
au BufNewFile,BufRead  *.bash-*  set filetype=sh
au BufNewFile,BufRead  crontab.cron  set filetype=crontab
"au BufNewFile,BufRead  *.py  set filetype=python
colorscheme desert
set dir=/var/tmp

nmap <F3> ggVG!python -mjson.tool<CR>
nmap <F4> ggVGJ

:hi CursorLine   guibg=grey20
:hi CursorColumn guibg=grey20
:nnoremap <Leader>cl :set cursorline!<CR>
:nnoremap <Leader>cc :set cursorcolumn!<CR>

:hi SpecialKey guifg=#ff0000 guibg=#ffbbbb

:hi OverLength ctermbg=red ctermfg=white guibg=#000000 guifg=#FF0000
let s:activatedh = 0 
function! ToggleH()
    if s:activatedh == 0
        let s:activatedh = 1 
        match OverLength /\%79v.\+/
    else
        let s:activatedh = 0 
        match none
    endif
endfunction

nnoremap <F6> :call ToggleH()<CR>
:call ToggleH()
