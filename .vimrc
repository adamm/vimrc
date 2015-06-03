let loaded_vimspell = 1 " vimspell is crap, this command disables it
set encoding=utf-8
set background=dark     " assume dark background
set hlsearch            " highlight search terms
set nocompatible        " Use Vim defaults (much better!)
set backspace=2         " allow backspacing over everything in insert mode
set autoindent          " always set autoindenting on
set smartindent         " smart auto-indenting for programming
set textwidth=75        " Wrap words at 75 chars by default
au FileType mail set textwidth=70 " But wrap for email at 70 chars
au FileType xml set noexpandtab
set nobackup            " Don't keep a backup file
set viminfo='20,\"50    " read/write a .viminfo file, don't store more than
                        " 50 lines of registers
set history=50          " keep 50 lines of command line history
set ruler               " show the cursor position all the time
set expandtab           " insert spaces, not tabs
set shiftwidth=4
set tabstop=8
set softtabstop=4
"set digraph             " Enables input of special characters
set list listchars=tab:»·,trail:·,precedes:«,extends:»
set wildmenu            " Status line to show possible completions of commands
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ignorecase          " Do case insensitive matching
set incsearch           " Incremental search
set autowrite           " Automatically save before commands like :next and :make
set runtimepath+=/usr/local/etc/vim
set mouse=

" Don't left-justify # comments, it's annoying
inoremap # X#

" Ctrl-T to spawn aspell
"map <C-T> :w!<CR>:!aspell check %<CR>:e! %<CR>


" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" We know xterm-debian is a color terminal
if &term =~ "xterm-debian" || &term =~ "xterm-xfree86"
  set t_Co=16
  set t_Sf=[3%dm
  set t_Sb=[4%dm
endif

if has("syntax")
  syntax on               " turn on syntax highlighting
endif

if has("autocmd")
  augroup filetype
    au!
    au BufNewFile,BufRead * set formatoptions=tcql nocindent comments&
    au BufNewFile,BufRead *.pl,*.pm set formatoptions=croql smartindent comments=srb:#,mb:#,el:#,:#
    au BufNewFile,BufRead *.c,*.cpp,*.h set formatoptions=croql noexpandtab cindent comments=sr:/*,mb:*,el:*/,:// softtabstop=8 shiftwidth=8
    au BufNewFile,BufRead *.html,*.tmpl,*.xml,*.css,*.js set formatoptions=croql softtabstop=2 shiftwidth=2
    au BufNewFile,BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
  augroup END
endif " has ("autocmd")

highlight SpecialKey ctermfg=darkblue
"highlight Comment ctermfg=darkgrey ctermbg=black guifg=#555555 guibg=black gui=italic
highlight Comment ctermfg=darkgrey guifg=#555555 gui=italic
highlight StatusLineNC ctermfg=black ctermbg=white guifg=black guibg=white
highlight StatusLine ctermfg=white
highlight TabLine cterm=bold,reverse
highlight Search ctermfg=8 ctermbg=1 guibg=red guifg=white

let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>

nmap <C-J> <C-W>j<C-W>_
nmap <C-K> <C-W>k<C-W>_
nmap <C-H> :tabnext<cr>
nmap <C-L> :tabprevious<cr>
nmap <C-N> :tabnew<cr>
set wmh=0
nmap <PageUp> <C-U>
nmap <PageDown> <C-D>

imap <S-Tab> <BS><BS><BS><BS>

let g:returnApp = "iTerm"
filetype plugin on

set background=dark
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized

