call plug#begin('~/.config/nvim/plugged')

" Plugins go here.  Example:
" " Plug 'foo/bar'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1

" Polyglot loads language support on demand!
Plug 'sheerun/vim-polyglot'

"install alchemist.vim
Plug 'slashmili/alchemist.vim'

"install elixir vim
Plug 'elixir-lang/vim-elixir'

" Execute code checks, find mistakes, in the background
Plug 'neomake/neomake'
  " Run Neomake when I save any buffer
  augroup localneomake
    autocmd! BufWritePost * Neomake
  augroup END
  " Don't tell me to use smartquotes in markdown ok?
  let g:neomake_markdown_enabled_makers = []
"one-dark theme
Plug 'joshdick/onedark.vim'

"airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Nerdtree
Plug 'scrooloose/nerdtree'

call plug#end()

" Sane tabs
" " - Two spaces wide
set tabstop=2
set softtabstop=2
" " - Expand them all
set expandtab
" " - Indent by 2 spaces by default
set shiftwidth=2
"SET LINE NUMBERING
set number " line numbering

"SET ENCODING
set encoding=utf-8

"Set ve=all to move using space and backspace after eol
set ve=all

"enable credo in neomake
let g:neomake_elixir_enabled_makers = ['mix', 'credo']

"set syntax on 
syntax on

"set colorscheme
colorscheme onedark

"set tmux colour
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


"Key Maps

"nerdtree toggle
map <C-n> :NERDTreeToggle<CR>

"map ESC to caps(ESC seems to far)
inoremap jj <Esc> `^


