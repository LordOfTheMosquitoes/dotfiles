call plug#begin('~/.vim/plugged')
    Plug 'townk/vim-autoclose'
    Plug 'plasticboy/vim-markdown'
	Plug 'flazz/vim-colorschemes'
	Plug 'PotatoesMaster/i3-vim-syntax'
	Plug 'chrisbra/csv.vim'
	Plug 'vim-syntastic/syntastic'
	" Only for OCaml
	Plug 'OCamlPro/ocp-indent'
	Plug 'ocaml/merlin'
	Plug 'hackwaly/vscode-ocaml'
	"END
call plug#end()

" Python from vim
autocmd Filetype python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

" R from vim
autocmd Filetype r nnoremap <F8> :!Rscript --vanilla %<cr>

let python_highlight_all = 1

"_______________________________C___________________________

"Run c from vim F9 is compile, F8 is compile and execute
autocmd Filetype c nnoremap	<F9>	:! echo ___________________________________________________________ && gcc -o '%:t:r' -lm -lncurses -ltinfo %  -Wall <cr>
autocmd Filetype c nnoremap	<F8>	:! echo ___________________________________________________________ && gcc -o '%:t:r' -lm -lncurses -ltinfo % && exec ./'%:t:r' <cr>
autocmd Filetype c nnoremap	m		:! echo ___________________________________________________________ && make<cr>

"___________________________OCAML___________________________

filetype indent on
filetype plugin on

autocmd BufRead *.ml nnoremap	<F8>	:! echo ___________________________________________________________ && ocaml % <cr>
autocmd BufRead *.ml nnoremap	<F9>	:! echo ___________________________________________________________ && ocamlc -o '%:t:r' % <cr>
autocmd BufRead *.ml nnoremap	m		:! echo ___________________________________________________________ && make<cr>

"-------------------------------------MARKDOWN-----------------
"Markdown to pdf F9 is compile, F8 is compile and look
autocmd Filetype markdown nnoremap  <F9> :!pandoc -o '%:t:r'.pdf %  --filter pandoc-fignos <cr>
autocmd Filetype markdown nnoremap  <F8> :!pandoc -o '%:t:r'.pdf --filter pandoc-fignos % && mupdf '%:t:r'.pdf & <cr><cr>
autocmd Filetype markdown nnoremap  <F10> :!pandoc -t beamer -o '%:t:r'.pdf  --filter pandoc-fignos % <cr> 

"Latex 
autocmd Filetype tex nnoremap  <F9> :!pdflatex % <cr>
autocmd Filetype tex nnoremap  <F8> :!pdflatex % &&  mupdf '%:t:r'.pdf <cr>

" set nice numbering options
set number
set relativenumber

" set nice scrolling
 set so=10

" set syntax
syntax on  
let g:clighter_autostart = 1

" set nofold
set nofoldenable

"colorscheme
" colo SlateDark
colo B
" colo dante

" I like 4 spaces for indenting
set shiftwidth=4

" I like 4 stops
set tabstop=4

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Always  set auto indenting on
 set autoindent

" set the commandheight
set cmdheight=1

" highlight search
set hls

" do not keep a backup files 
set nobackup
set nowritebackup
set noswapfile

" pressing < or > will let you indent/unident selected lines

vnoremap < <gv
vnoremap > >gv

" Undo in insert mode.
imap <c-z> <c-o>u

" Napravi za srpsku tastaturu (cc, ch, sh, dj, zh ...)

" Stavljeno sh <c-k><s sto je sh, ali nije radilo pre HACK gluposti
inoremap <F2> <Esc>:inoremap sh <c-k><s<Enter>:inoremap ch č<Enter>:inoremap cc ć<Enter>:inoremap zh ž<Enter>:inoremap dj đ<Enter>:inoremap Sh Š<Enter>:inoremap Ch Č<Enter>:inoremap Cc Ć<Enter>:inoremap Zh Ž<Enter>:inoremap Dj Đ<Enter>

inoremap <F3> <Esc>:inoremap sh sh<Enter>:inoremap ch ch <Enter>:inoremap cc cc<Enter>:inoremap zh zh<Enter>:inoremap dj dj<Enter>:inoremap Sh Sh<Enter>:inoremap Ch Ch<Enter>:inoremap Cc Cc<Enter>:inoremap Zh Zh<Enter>:inoremap Dj Dj<Enter>

