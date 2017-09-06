" -----------------------------------------------------------------------------
" plugins
" -----------------------------------------------------------------------------
set nocompatible                    " be iMproved, required
filetype off
set rtp+=~/.vim/bundle/Vundle.vim   " set the runtime path to include Vundle and initialize
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'       " let Vundle manage Vundle
Plugin 'airblade/vim-gitgutter'
Plugin 'scwood/vim-hybrid'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/PreserveNoEOL'
Plugin 'ConradIrwin/vim-bracketed-paste'
call vundle#end()
filetype plugin indent on

" -----------------------------------------------------------------------------
" plugin specific settings
" -----------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'
let g:airline_powerline_fonts=1
let g:airline_section_c='%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'
let g:airline_solarized_bg='dark'
let g:airline_theme='solarized'
let g:hybrid_custom_term_colors=1
let g:solarized_termcolors=256
let g:PreserveNoEOL=1
set noshowmode                      " airline is installed, disable the default mode indicator
set signcolumn=yes

" -----------------------------------------------------------------------------
" general settings
" -----------------------------------------------------------------------------
" Colors
syntax on                       " enable syntax processing
set background=dark
colorscheme hybrid

" Misc
set ttyfast                     " faster redraw
set updatetime=500              " increase the response time
set backspace=indent,eol,start
set clipboard=unnamed           " enable copying to system clipboard
set shortmess+=I                " remove startup message when no file is selected
set mouse=v

" Time out on key codes but not mappings.
set notimeout
set ttimeout
set ttimeoutlen=10

" Backup and swap files
set nobackup
set noswapfile

" Spaces & Tabs
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set shiftwidth=4
set modelines=1
set autoindent
set nowrap
set listchars=eol:¬,tab:→·,space:·,trail:·,extends:→,precedes:←
set nolist

" UI Layout
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu
set showmatch           " higlight matching parenthesis
set scrolloff=3         " always show at least 5 lines above/below the cursor
set sidescrolloff=3     " always show at least 5 characters left/right of the cursor
"set colorcolumn=80

" Status line
set laststatus=2
set statusline=
set statusline=%F                                   " filename
set statusline+=\ [%{fugitive#head()}]              " git status
set statusline+=%=                                  " left/right separator
set statusline+=\ [%{strlen(&fenc)?&fenc:'none'}    " file encoding
set statusline+=\ %{&ff}                            " file format
set statusline+=\ %{strlen(&ft)?&ft:'none'}]        " filetype
set statusline+=\ %c                                " cursor column
set statusline+=\ %l/%L                             " cursor line/total lines
set statusline+=\ %P                                " percent through file

" Searching
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
set nowrapscan          " do not wrap around
highlight Search ctermbg=black ctermfg=red cterm=underline

" Explorer
let g:netrw_liststyle=1

" Splits
set splitbelow
set splitright

" Folding
set nofoldenable        " don't fold files by default on open
set foldmethod=indent   " fold based on indent level
set foldlevelstart=1    " start with fold level of 1
set foldnestmax=10      " max 10 depth

" AutoGroups
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd Filetype crontab setlocal nobackup nowritebackup
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufNewFile,BufRead *.md set spell spelllang=en_gb
    autocmd BufNewFile,BufRead Vagrantfile,Gemfile* set filetype=ruby
    autocmd BufWritePre *.md,*.txt %s/\s\+$//e
augroup END

" -----------------------------------------------------------------------------
" Functions
" -----------------------------------------------------------------------------
" Map key to toggle opt
function MapToggle(key, opt)
  let cmd = ':set '.a:opt.'! \| set '.a:opt."?\<CR>"
  exec 'nnoremap '.a:key.' '.cmd
  exec 'inoremap '.a:key." \<C-O>".cmd
endfunction
command -nargs=+ MapToggle call MapToggle(<f-args>)

" Toggle the gutter, which includes gitgutter indicators and line numbers
function! GutterToggle()
    set number!
    GitGutterToggle
endfunction

" -----------------------------------------------------------------------------
" Bindings
" -----------------------------------------------------------------------------
MapToggle <F2> paste
MapToggle <F3> hlsearch
MapToggle <F4> wrap
nnoremap  <F5> :call GutterToggle()<CR>
MapToggle <F6> list

nnoremap j gj
nnoremap k gk
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprevious<CR>

" -----------------------------------------------------------------------------
" Diff settings
" -----------------------------------------------------------------------------
if &diff
    " set diffopt+=iwhite
    set noro
    " Turn off cursorline effect, except for line number highlighting
    highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE
    syntax off
    " Remap keys for managing diffs
    nnoremap j ]c
    nnoremap k [c
    map      h ]n
    map      l [n
    nnoremap o do
    nnoremap p dp
    nnoremap U :diffupdate<CR>
    nnoremap 1 :diffget LOCAL<CR>
    nnoremap 2 :diffget BASE<CR>
    nnoremap 3 :diffget REMOTE<CR>
endif
