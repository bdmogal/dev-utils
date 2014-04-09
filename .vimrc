" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" Hides buffers instead of closing them when you open more buffers using :e so that it does not ask you to save/undo changes in the open buffers
set hidden

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set expandtab
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep

" Text width
" set tw=80

set nobackup
set noswapfile

if &t_Co >= 256 || has("gui_running")
	colorscheme mustang
	" colorscheme wombat
	" colorscheme zenburn
	endif

if &t_Co > 2 || has("gui_running")
	" switch syntax highlighting on, when the terminal has colors
	syntax on
	endif


nnoremap ; :


au BufRead,BufNewFile *.java set filetype=java
au BufRead,BufNewFile *.php set filetype=php
au BufRead,BufNewFile *.perl set filetype=perl
au BufRead,BufNewFile *.py set filetype=py
au BufRead,BufNewFile *.cpp set filetype=c
au BufRead,BufNewFile *.cc set filetype=c
au BufRead,BufNewFile *.c set filetype=c
au BufRead,BufNewFile *.html set filetype=html
au BufRead,BufNewFile *.xml set filetype=xml

"au! Syntax java source $VIM/java.vim
"au! Syntax php source $VIM/php.vim
"au! Syntax perl source $VIM/perl.vim
"au! Syntax py source $VIM/python.vim
"au! Syntax cpp source $VIM/cpp.vim
"au! Syntax html source $VIM/html.vim
"au! Syntax xml source $VIM/xml.vim

au! Syntax java source $HOME/.vim/syntax/java.vim
au! Syntax php source $HOME/.vim/syntax/php.vim
au! Syntax perl source $HOME/.vim/syntax/perl.vim
au! Syntax py source $HOME/.vim/syntax/python.vim
au! Syntax cpp source $HOME/.vim/syntax/cpp.vim
au! Syntax html source $HOME/.vim/syntax/html.vim
au! Syntax xml source $HOME/.vim/syntax/xml.vim

" Nerdtree
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

let NERDChristmasTree=1

" statusline

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

"Opening urls from vim
 
function! Browser ()

    let line0 = getline (".")

    let line = matchstr (line0, "http[^ ]*")

    :if line==""

    let line = matchstr (line0, "ftp[^ ]*")

    :endif

    :if line==""

    let line = matchstr (line0, "file[^ ]*")

    :endif

    " echo line

    exec ":silent !open -a /Applications/Firefox.app ".line

    redraw!

endfunction

map \w :call Browser ()<CR>
