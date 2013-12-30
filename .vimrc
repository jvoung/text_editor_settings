"""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype on
filetype plugin on
filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""
" Controls / UI
"""""""""""""""""""""""""""""""""""""""""""""""

set mouse=a
set backspace=2 	" make backspace work normal
set whichwrap+=h,l,~,[,],<,>  " backspace and cursor keys wrap to
set noerrorbells 	" don't make noise
set wildmenu
set ruler

" dabbrev (with emacs keybinding)
set complete-=k complete+=k "dabbrev through <C-N>
imap <M-/> <C-N>

" buffer switching
map <C-PageUp> :bnext<CR>
imap <C-PageUp> <ESC>:bnext<CR>
map <C-PageDown> :bprev<CR>
imap <C-PageDown> <ESC>:bprev<CR>

" window switching
map <C-Tab> <C-W><C-W>

" close buffer (emacs-style)
map <C-X><C-K> :bd<CR>

"""""""""""""""""""""""""""""""""""""""""""""""
" Visual cues
"""""""""""""""""""""""""""""""""""""""""""""""

set nohlsearch
set incsearch
set showmatch

"""""""""""""""""""""""""""""""""""""""""""""""
" Text formatting
"""""""""""""""""""""""""""""""""""""""""""""""

set ai 		"auto-indent
set si		"smart-indent
set cindent	"c-indent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab
set smarttab

"""""""""""""""""""""""""""""""""""""""""""""""
" Special language-specific vars
"""""""""""""""""""""""""""""""""""""""""""""""

let perl_extended_vars=1	"highlight advanced perl vars inside strings
let java_highlight_java_lang_ids=1
let java_highlight_debug=1
let bash_is_sh=1

"python
autocmd FileType python set tabstop=4
autocmd FileType python set softtabstop=4
autocmd FileType python set shiftwidth=4

"ocaml
autocmd FileType omlet set indentkeys+=,!^I
"let ocaml_folding=1
let omlet_indent_match=0
let omlet_indent_let=0
let omlet_indent_function=2
let omlet_indent_struct=2

"makefiles


"""""""""""""""""""""""""""""""""""""""""""""""
" Set up F9 to set up window size and splits 
"""""""""""""""""""""""""""""""""""""""""""""""

function SetUpEnv()
  " set columns=202
  set columns=170
  set lines=50
  " Tlist
  80 vnew
  " winpos 5 0
  winpos 0 0
endfunction
nnoremap <silent> <F9> :call SetUpEnv()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

  """"""""""""""""""""""""""""""
  " Vim Grep
  """"""""""""""""""""""""""""""
  let Grep_Skip_Dirs = 'RCS CVS SCCS .svn'
  let Grep_Cygwin_Find = 1

  """"""""""""""""""""""""""""""
  " Yank Ring
  """"""""""""""""""""""""""""""
  map <leader>y :YRShow<cr>

  """"""""""""""""""""""""""""""
  " File explorer
  """"""""""""""""""""""""""""""
  "Split vertically
  let g:explVertical=1

  "Window size
  let g:explWinSize=35
  let g:explSplitLeft=1
  let g:explSplitBelow=1

  "Hide some files
  let g:explHideFiles='^\.,.*\.class$,.*\.swp$,.*\.pyc$,.*\.swo$,\.DS_Store$'

  "Hide the help thing...
  let g:explDetailedHelp=0

"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""
" Color Theme
"""""""""""""""""""""""""""""""""""""""""""""""

syntax on
set background=dark
colorscheme desert

"Omni menu colors
hi Pmenu guibg=#444444
hi PmenuSel guibg=#555555 guifg=#ffffff

