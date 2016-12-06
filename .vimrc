" @author - Pranay Patil

"sets indents to 2 spaces
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

"sets autoindent
set autoindent

"sets line numbers
set number

"highlights the column at the 80th character
set colorcolumn=80

"sets the solarized color theme
syntax enable
set background=light
colorscheme solarized

"removes trailing spaces
function! TrimWhiteSpace()
    %s/\s\+$//e
    endfunction

    nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>

" Calls TrimWhiteSpace() when these events occur
autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()
