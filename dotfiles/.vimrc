" Colors
syntax enable           " enable syntax processing
colorscheme monokai

" Misc
set ttyfast             " faster redraw
set backspace=indent,eol,start

" Spaces & Tabs
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1
set autoindent
set nowrap

" UI Layout
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu
set showmatch           " higlight matching parenthesis
set scrolloff=5         " always show at least 5 lines above/below the cursor
set sidescrolloff=5     " always show at least 5 characters left/right of the cursor
set colorcolumn=80

" Status line
set laststatus=2
set statusline=
set statusline=%F                                   " filename
set statusline+=\ [%{strlen(&fenc)?&fenc:'none'}    " file encoding
set statusline+=\ %{&ff}                            " file format
set statusline+=\ %{strlen(&ft)?&ft:'none'}]        " filetype
set statusline+=%=                                  " left/right separator
set statusline+=\ %c                                " cursor column
set statusline+=\ %l/%L                             " cursor line/total lines
set statusline+=\ %P                                " percent through file

" Searching
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches

" Folding
set nofoldenable        " don't fold files by default on open
set foldmethod=indent   " fold based on indent level
set foldlevelstart=1    " start with fold level of 1
set foldnestmax=10      " max 10 depth
nnoremap <space> za

" Line Shortcuts
nnoremap j gj
nnoremap k gk

" AutoGroups
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md,*.rb :call <SID>StripTrailingWhitespaces()
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
    autocmd BufRead,BufNewFile *.md set spell spelllang=en_gb
augroup END

" Functions
" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction
