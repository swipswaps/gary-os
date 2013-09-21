"###############################################################################
" vim configuration file
"###############################################################################

set nocompatible

set autoread
set secure
set ttyfast

let loaded_matchparen			=1

"#######################################
" files
"#######################################

set viminfo				=
set printheader				=[\ %<%t\ -\ %N\ ]

set swapfile
set directory				=.
">>>set swapsync				=sync
set updatecount				=10
set updatetime				=10

"#######################################
" colors
"#######################################

highlight cursor     guibg=red   ctermbg=red   guifg=black    ctermfg=black
highlight normal     guibg=black ctermbg=black guifg=gray     ctermfg=gray

filetype				on
syntax					on
set background				=light

highlight comment    guibg=black ctermbg=black guifg=darkcyan ctermfg=darkcyan
highlight nontext    guibg=black ctermbg=black guifg=darkcyan ctermfg=darkcyan
highlight specialkey guibg=black ctermbg=black guifg=darkcyan ctermfg=darkcyan

highlight folded     guibg=black ctermbg=black guifg=darkblue ctermfg=darkblue
highlight foldcolumn guibg=black ctermbg=black guifg=darkblue ctermfg=darkblue

"#######################################
" interface
"#######################################

set noautowrite
set noautowriteall
set hidden
set hlsearch
set ignorecase
set incsearch
set modeline
set noruler
set showcmd
set noshowmode
set smartcase
set nospell
set novisualbell

set wildmenu
set wildmode				=full
set wildchar				=<tab>

set autoindent
set noexpandtab
set smartindent
set shiftwidth				=8
set tabstop				=8

set scrolljump				=1
set scrolloff				=10
set sidescroll				=10
set sidescrolloff			=10
set history				=100
set undolevels				=1000

set foldenable
set foldcolumn				=1
set foldlevelstart			=99
set foldminlines			=0
set foldmethod				=indent
set foldtext				=v:folddashes.\"\ \".v:foldlevel.\"\ \[\".(v:foldend\ \-\ v:foldstart\ \+\ 1).\"\,\ \".v:foldstart.\"\-\".v:foldend.\"\]\ \"

set whichwrap				=b,s
set backspace				=indent,eol

set list
set listchars				=tab:,.,trail:=,extends:>,precedes:<

set linebreak
set breakat				=\ \\
set showbreak				=+

set textwidth				=0
set formatlistpat			=^\\s*\\w\\+[\\.)]\\s*
set formatoptions			=12cjnoqrt
set comments				=sr:/*,mb:*,ex:*/,b://,b:###,b:#,b:%,bf:+,bf:-

set highlight				=sr
set laststatus				=2
set statusline				=[\ %<%F%R%M%W%H\ ]%y\ %=\ [\ %n\ \|\ %b\ 0x%B\ \|\ %c,%v\ %l/%L\ %p%%\ ]

"#######################################
" abbreviations
"#######################################

" date/time stamps
iab @-e 1970-01-01
iab @-d 2038-01-19
iab @-t 2038-01-19T03:14:07-0000
iab @@d <C-R>=strftime("%F")<CR>
iab @@t <C-R>=strftime("%FT%T%z")<CR>

" new items
iab @.n ====-==-==T==:==:==-==== ====-==-== ====-==-==T==:==:==-==== <C-R>=strftime("%F")<CR> ~ __ +VIM+ ~ +VIM+<ESC>0
iab @.s ====-==-==T==:==:==-==== ====-==-== <C-R>=strftime("%FT%T%z")<CR> <C-R>=strftime("%F")<CR> ~ __ +VIM+ ~ +VIM+<ESC>0

"#######################################
" maps
"#######################################

" clean up folding
map z. <ESC>:set foldlevel=0<CR>zv
map z1 <ESC>:set foldlevel=0<CR>/\[personal\]<CR>
map z2 <ESC>:set foldlevel=0<CR>/\[work\]<CR>

" jump/edit next token
map  <C-J> <ESC>/+VIM+<CR>c5l
map! <C-J> <C-O>/+VIM+<CR><C-O>c5l

" convert tab-delimited file to properly formatted csv
map <F5> <ESC>:%s/^/\"/g<CR>:%s/\t/\"\,\"/g<CR>:%s/$/\"/g<CR>

" (re)set folding, pasting and wrapping
map <F6> <ESC>:set foldlevel=1<CR>
map <F7> <ESC>:set invpaste<CR>
map <F8> <ESC>:set invwrap<CR>

" remove all spaces from the end of all lines
map <F9> <ESC>:%s/[ \t]*$//g<CR>1G

" (un)set automatic formatting
map <F10> <ESC>:set formatoptions+=a<CR><ESC>:set   spell<CR><ESC>:set   expandtab<CR><ESC>:set shiftwidth=4<CR><ESC>:set tabstop=4<CR><ESC>:set columns=73<CR><ESC>:set textwidth=72<CR>
map <F11> <ESC>:set formatoptions-=a<CR><ESC>:set nospell<CR><ESC>:set   expandtab<CR><ESC>:set shiftwidth=4<CR><ESC>:set tabstop=4<CR><ESC>:set columns=73<CR><ESC>:set textwidth=72<CR>
map <F12> <ESC>:set formatoptions-=a<CR><ESC>:set nospell<CR><ESC>:set noexpandtab<CR><ESC>:set shiftwidth=8<CR><ESC>:set tabstop=8<CR><ESC>:set columns=81<CR><ESC>:set textwidth=0<CR>

"###############################################################################
" end of file
"###############################################################################
