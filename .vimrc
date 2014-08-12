" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=indent,eol,start		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

au BufRead *.as set filetype=actionscript

call pathogen#infect()
set background=dark
colorscheme solarized
syntax enable
filetype plugin indent on

"ctags stuff
set tags+=$HOME/.vim/tags
nmap <F4> :TlistToggle<CR>

"line numbers
set nu

"history expansion
set history=1000

"enable mouse
set mouse=a

"allow cursor to go beyon last character
set virtualedit=onemore

"add view options that I'm not sure what they do
set viewoptions=folds,options,cursor,unix,slash

"better indentationd
set autoindent
set smartindent

"show matching braces/parens/etc
set showmatch

"show info on bottom of file
set ruler

"better searching
set incsearch
set hlsearch
set ignorecase
set smartcase
set wildmenu
set wildmode=list:longest,full

"better tabbing
set smarttab  
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2

"copy to system clipboard
set clipboard=unnamed

"no backups
set nobackup

"add a cursorline
set cursorline
hi cursorline guibg=#333333
hi CursorColumn guibg=#333333

"remap redraw of screen to include clearing hl of searches
nnoremap <silent> <C-l> :nohl<CR><C-l>

"folding enabled
set foldenable

"reflow a paragraph to find proper line breaks.
set tw=80
set colorcolumn=+1
nnoremap Q gqap
