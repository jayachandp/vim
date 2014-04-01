" This .vimrc file should be placed in your home directory
" The Terminal app supports (at least) 16 colors
" So you can have the eight dark colors and the eight light colors
" the plain colors, using these settings, are the same as the light ones
" NOTE: You will need to replace ^[ with a raw Escape character, which you
" can type by typing Ctrl-V and then (after releaseing Ctrl-V) the Escape key.

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" Better copy and paste
set pastetoggle=<F2>
set clipboard=unnamed

set number

set modeline
set ls=2

set tabstop=4

if has("terminfo")
  set t_Co=16
  set t_AB=[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm
  set t_AF=[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm
else
  set t_Co=16
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

syntax on

set ts=4

set ruler

set selectmode=mouse
set mouse=a   " Press ALT and click 

"set bs=2      " Make backspace behave normal

" Smart tabbing/autoindenting
set undolevels=100
set nocompatible
set autoindent
set smarttab
set expandtab

" Allow backspace to back over lines
set backspace=2
set exrc
set shiftwidth=4
set tabstop=4
set cino=10

" I like it writing automatically on swapping
set autowrite
set noshowcmd
if exists('&selection')
  set selection=exclusive
endif

if has("gui_running")
  "set the font to user
  set guifont=Courier_New:h10
  "Hide the mouse pointer while typing
  set mousehide
endif

set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

" Everything from here on down is optional
" These colors are examples of what is possible
" type :help syntax
" or :help color within vim for more info
" and try opening the file
" share/vim/vim61/syntax/colortest.vim
" Note: where share is depends on where/how you installed vim
 
set cursorline
set colorcolumn=80
highlight ColorColumn ctermbg=gray                                              
" Highlight all after colorcolumn                                                                                                                         
"execute "set colorcolumn=" . join(range(81,335), ',')
highlight Comment       ctermfg=DarkGreen
highlight Constant      ctermfg=DarkMagenta
highlight Character     ctermfg=DarkRed
highlight Special       ctermfg=DarkBlue
highlight Identifier    ctermfg=DarkCyan
highlight Statement     ctermfg=DarkBlue
highlight PreProc       ctermfg=DarkBlue
highlight Type          ctermfg=DarkBlue
highlight Number        ctermfg=DarkBlue
highlight Delimiter     ctermfg=DarkBlue
highlight Error         ctermfg=Black
highlight Todo          ctermfg=DarkBlue
highlight WarningMsg    term=NONE           ctermfg=Black ctermbg=NONE   
highlight ErrorMsg      term=NONE           ctermfg=DarkRed ctermbg=NONE 

" These settings only affect the X11 GUI version (which is different
" than the fully Carbonized version at homepage.mac.com/fisherbb/

highlight Comment       guifg=Green                 gui=NONE
highlight Constant      guifg=Magenta               gui=NONE
highlight Character     guifg=Red                   gui=NONE
highlight Special       guifg=Blue                  gui=NONE
highlight Identifier    guifg=DarkCyan              gui=NONE
highlight Statement     guifg=DarkGreen             gui=NONE
highlight PreProc       guifg=Purple                gui=NONE
highlight Type          guifg=DarkGreen             gui=NONE
"highlight Normal                   guibg=#E0F2FF   gui=NONE
highlight Number        guifg=Blue                  gui=NONE
"highlight Cursor       guifg=NONE  guibg=Green
"highlight Cursor       guifg=bg    guibg=fg
highlight Delimiter     guifg=blue                  gui=NONE
"highlight NonText                  guibg=lightgray gui=NONE
"highlight Error        guifg=White guibg=Red       gui=NONE
highlight Error         guifg=NONE  guibg=NONE      gui=NONE
highlight Todo          guifg=Blue  guibg=Yellow    gui=NONE

"#### end color settings #############  

filetype indent on "for auto indent after : in python                                                                                                     
filetype plugin on     
"for pydiction
"let g:pydiction_location = "/Users/jay/.vim/bundle/pydiction/complete-dict"
