" Init Pathogen
set nocompatible
execute pathogen#infect()
filetype plugin indent on

" Editor preferences
syntax on
set autoindent
set autoread
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
set guifont=Hack:h14

" Term color settings
" source ~/.vim-term-config

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

" Navigate 5 lines at a go
map <S-j> 5j
map <S-k> 5k

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
au BufRead,BufNewFile .bash_scripts set syntax=sh
au BufRead,BufNewFile Brewfile  set syntax=sh
au BufRead,BufNewFile httpd*.conf set syntax=apache
au BufNewFile,BufRead *.md,*.markdown,*.mdown,*.mkd,*.mkdn,README.md set filetype=markdown

" vim plugins concealment
" if globpath(&runtimepath, 'javascript.vim', 1) !=# ''
"	set conceallevel=1
"	let g:javascript_conceal_function             = "ƒ"
"	let g:javascript_conceal_null                 = "ø"
"	let g:javascript_conceal_this                 = "@"
"	let g:javascript_conceal_return               = "⇚"
"	let g:javascript_conceal_undefined            = "¿"
"	let g:javascript_conceal_NaN                  = "ℕ"
"	let g:javascript_conceal_prototype            = "¶"
"	let g:javascript_conceal_static               = "•"
"	let g:javascript_conceal_super                = "Ω"
"	let g:javascript_conceal_arrow_function       = "⇒"
"	let g:javascript_conceal_noarg_arrow_function = "🞅"
"	let g:javascript_conceal_underscore_arrow_function = "🞅"
" endif

