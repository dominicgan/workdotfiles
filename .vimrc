if !has("gui_running")
  let $VIMRUNTIME="C:/Program\ Files\ (x86)/Vim/vim74"
  let $VIM="C:/Program\ Files\ (x86)/Vim/vim74"
  set shortmess=a
  set cmdheight=2
endif

if has('win32') || has('win64')
    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

" Init Pathogen
execute pathogen#infect()
set laststatus=2
set timeoutlen=1000

" Editor preferences
syntax enable
set nocp
set number
set autoindent
set tabstop=4
set noexpandtab
set shiftwidth=4
set shortmess=a
set textwidth=80
set showcmd

filetype on
filetype plugin on
filetype indent on

" Vim markdown settings
let g:vim_markdown_folding_disabled = 1

" Set the type for the file type but do NOT override if file type
" already has detected
au BufRead,BufNewFile *.conf set syntax=dosini
au BufRead,BufNewFile httpd*.conf set syntax=apache
au BufRead,BufNewFile *.tpl set syntax=dosini
au BufRead,BufNewFile *.sah set syntax=javascript
au BufNewFile,BufRead *.nunjucks set ft=jinja

" Vim diff settings
set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set runtimepath^=~/.vim/bundle/ctrlp.vim

if has('gui_running')
  set guifont=Consolas:h10
  set shell=C:/Program\ Files/Git/usr/bin/bash
  colorscheme onedark
  let g:airline_theme='base16_google'
endif

if &term=~"xterm-256color"
  colorscheme onedark
  let g:airline_theme='base16_chalk'
  let &t_AB="\e[48;5;%dm"
  let &t_AF="\e[38;5;%dm"
endif


" Wordwise Ctrl-Y in insert mode
noremap! <C-Y> <Esc>klyWjpa

" CtrlP Settings
" let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
