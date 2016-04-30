 set nocompatible

 " Show a status line
 set laststatus=2

 " Show the current cursor position
 set ruler

 " Enable syntax highlighting
 syn on
 " }}}
 " Mouse {{{
 " Send more characters for redraws
 set ttyfast

 " Enable mouse use in all modes
 set mouse=a

 " Set this to the name of your terminal that supports mouse codes.
 " Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
 set ttymouse=xterm
 " }}}
 " Disable arrow keys {{{
 noremap  <Up>     <NOP>
 inoremap <Down>   <NOP>
 inoremap <Left>   <NOP>
 inoremap <Right>  <NOP>
 noremap  <Up>     <NOP>
 noremap  <Down>   <NOP>
 noremap  <Left>   <NOP>
 noremap  <Right>  <NOP>
 " }}}


execute pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
syntax on
filetype plugin indent on

set number

let g:pymode = 1
let g:pymode_options = 1
let g:pymode_lint_write = 0 
let g:pymode_folding = 0 
let g:pymode_rope_vim_completion = 0 
let g:pymode_indent = 1
let g:pymode_folding = 1
let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r'
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_breakpoint_cmd = ''



nmap <F8> :TagbarToggle<CR>

let g:tagbar_autofocus = 1
let g:tagbar_sort = 0 "tagbar shows tags in order of they created in file
let g:tagbar_foldlevel = 0 "close tagbar folds by default

filetype plugin on

autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
let g:neocomplcache_enable_at_startup = 1

let g:neocomplcache_disable_auto_complete = 1
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : "\<C-x>\<C-u>"
function! s:check_back_space()"{{{
let col = col('.') - 1
return !col || getline('.')[col - 1] =~ '\s'
endfunction"}}
