" Enable syntax highlighting
syntax on

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Tie the clipboard to the `*` register so that we can yank to
" and paste from whatever we yank.
" set clipboard=unnamed

" Set the encoding to utf-8 so that vim doesn't default to
" latin-1
set encoding=utf-8

" Create an undo directory such that we can go back in time by
" having the UNDOFILE directive set.
"
" By keeping them all under a single directory, we make sure
" that they don't live in random places.
set undodir=~/.vim/.undo
set undofile


" Escape with smashing j and k; easier to press quickly on
" slow systems.
inoremap jk <esc>
inoremap kj <esc>


" Save on enter.
nmap <cr> :w<cr>


" Clear highlights on space.
nmap <space> :noh<cr>


" Shorthand for window switching.
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" Don't create swap file.
set noswapfile


" Highlight the search results with incremental
" search.
set hlsearch
set incsearch


" Do not show preview option.
set completeopt-=preview


" Automatically indent, except for yaml.
set autoindent
set smartindent
autocmd FileType yaml setlocal indentexpr=


" Break lines when max-width is hit.
set linebreak


" Show bottom-right numbers.
set ruler


" Enable the use of mouse operations.
set mouse=a


" Just because.
" set background=dark


" Add automatic comment prefix adder.
set formatoptions=tcqr


" Because we're in the 80s
" set tw=80


" Enable autocompletion + better popup interaction.
filetype plugin indent on
set completeopt=noinsert,menuone,noselect
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

inoremap <silent> <CR> <C-r>=<SID>close_and_linebreak()<CR>
function! s:close_and_linebreak()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction


" Enable YCM only for C / C headers / CPP / rust
let g:ycm_filetype_whitelist = {'c': 1, 'cpp': 1, 'rust': 1}


" Disable autofolding at startup
set foldlevelstart=99

" helm
autocmd BufRead,BufNewFile */templates/*.yaml,*/templates/*.tpl,*/templates/NOTES.txt set ft=gotexttmpl

" FileType specific
autocmd FileType yaml setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType tf setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType hcl setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType gotexttmpl setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType markdown setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType html setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType bpftrace setlocal tabstop=8 shiftwidth=8 noexpandtab

autocmd FileType rust nnoremap <buffer> <silent> gd :YcmCompleter GoToDefinition<cr>
autocmd FileType c nnoremap <buffer> <silent> gd :YcmCompleter GoToDefinition<cr>
autocmd FileType cpp nnoremap <buffer> <silent> gd :YcmCompleter GoToDefinition<cr>

autocmd FileType rust set tw=80

highlight ColorColumn ctermbg=4

let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0

let g:go_highlight_diagnostic_errors = 0
let g:go_highlight_diagnostic_warnings = 0

" let g:go_fmt_command = "goimports"
command G GoImports
command P set paste
command PP set nopaste

highlight Pmenu ctermbg=gray guibg=gray
highlight PmenuSel ctermbg=yellow guibg=yellow
