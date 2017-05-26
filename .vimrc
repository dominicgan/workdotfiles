" Init Pathogen
set nocompatible
execute pathogen#infect()
filetype plugin indent on

" Editor preferences
syntax on
set autoindent
set backspace=indent,eol,start
set confirm
set cursorline
set ignorecase
set laststatus=2
set mouse=a
set noshowmode
set nocp
set noexpandtab
set number
set path+=**
set ruler
set shiftwidth=4
set showcmd
set shortmess=a
set smartcase
set textwidth=80
set ttimeoutlen=50
set tabstop=4
set wildmenu

" Term color settings
source ~/.vim-term-config

if has("gui_running")
	set linespace=3
	set guifont=Hack:h12
	set macligatures
endif

" vim-airline icons
source ~/.vim-airline-icons

" CtrlP Settings
set runtimepath^=~/.vim/bundle/ctrlp.vim
" let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

" Wordwise Ctrl-Y in insert mode
noremap! <C-Y> <Esc>klyWjpa

" NERDTree Settings
map <silent> <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Minimap Settings
map <silent> <S-m> :MinimapToggle<CR>
let g:minimap_highlight='Visual'

" Markdown Settings
let g:vim_markdown_folding_disabled=1
hi link VimwikiHeader1 pandocBlockQuoteLeader1
hi link VimwikiHeader2 pandocBlockQuoteLeader2
hi link VimwikiHeader3 pandocBlockQuoteLeader3
hi link VimwikiHeader4 pandocBlockQuoteLeader4
hi link VimwikiHeader5 pandocBlockQuoteLeader5
hi link VimwikiHeader6 pandocBlockQuoteLeader6

colorscheme onedark
let g:airline_theme='base16_colors'
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"

" Set the type for the file type but do NOT override if file type
" already has detected
au BufRead,BufNewFile *.conf,*.tpl,*.tigrc set syntax=dosini
au BufRead,BufNewFile *.sah   	  set syntax=javascript
au BufRead,BufNewFile *.nunjucks  set ft=jinja
au BufRead,BufNewFile *.tmux.conf set syntax=perl
au BufRead,BufNewFile *.vim-* 	  set syntax=vim
au BufRead,BufNewFile httpd*.conf set syntax=apache
au BufNewFile,BufRead *.md,*.markdown,*.mdown,*.mkd,*.mkdn,README.md set filetype=markdown

