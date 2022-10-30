" Enable syntax highlighting
"
syntax on


" Allow backspacing over everything in insert mode
"
set backspace=indent,eol,start


" Set the encoding to utf-8 so that vim doesn't default to
" latin-1
"
set encoding=utf-8


" Create an undo directory such that we can go back in time by
" having the UNDOFILE directive set.
"
" By keeping them all under a single directory, we make sure
" that they don't live in random places.
"
set undodir=~/.vim/.undo
set undofile


" Escape with smashing j and k
"
inoremap kj <esc>


" Save on enter.
"
nmap <cr> :w<cr>


" Clear highlights on space.
"
nmap <space> :noh<cr>


" Shorthand for window switching.
"
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" Don't create swap file.
"
set noswapfile


" Highlight the search results with incremental search.
"
set hlsearch
set incsearch


" Do not show preview option.
"
set completeopt-=preview


" Break lines when max-width is hit.
"
set linebreak


" Show bottom-right numbers.
"
set ruler


" Enable the use of mouse operations.
"
set mouse=a


" Just because.
"
set background=light


" Add automatic comment prefix adder.
"
set formatoptions=tcqr


" Enable autocompletion + better popup interaction.
"
filetype plugin indent on
set completeopt=noinsert,menuone,noselect
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

inoremap <silent> <CR> <C-r>=<SID>close_and_linebreak()<CR>
function! s:close_and_linebreak()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
endfunction


" Disable autofolding at startup.
"
set foldlevelstart=99


" Window styling.
"
highlight Pmenu ctermbg=gray guibg=gray
highlight PmenuSel ctermbg=yellow guibg=yellow


" Some short-commands i'm used to.
"
command G GoImports
command P set paste
command PP set nopaste


" Because we're in the 80s.
"
set colorcolumn=80
let g:better_whitespace_ctermcolor=7
" highlight ColorColumn ctermbg=7
highlight ColorColumn ctermbg=0 guibg=lightgray


" Filetype-specific configgurations
"
au BufRead,BufNewFile *.bpf setfiletype c
au FileType cpp nnoremap gd :ALEGoToDefinition<CR>
au FileType cpp setlocal ts=2 sts=2 sw=2 expandtab smarttab
au FileType sh setlocal tabstop=8 shiftwidth=8 expandtab
au FileType markdown setlocal tabstop=2 shiftwidth=2 expandtab
au FileType rust nnoremap gd :ALEGoToDefinition<CR>
au FileType yaml,yml setlocal ts=2 sts=2 sw=2 expandtab smarttab

highlight clear SignColumn


" vim-go tweaking.
"
let g:go_fmt_autosave = 1
let g:go_highlight_diagnostic_errors = 0
let g:go_highlight_diagnostic_warnings = 0
let g:go_imports_autosave = 0


" Ale
"
set omnifunc=ale#completion#OmniFunc

let g:ale_completion_enabled = 0
let g:ale_completion_autoimport = 0
let g:ale_set_loclist = 0

let g:ale_linters = { 'rust': ['analyzer'], 'go': ['govet'], 'sh': [] }
let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }
let g:ale_set_highlights = 0


