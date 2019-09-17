" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-salve'
Plug 'tpope/vim-fugitive'
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'vim-airline/vim-airline'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'dense-analysis/ale'
Plug 'mileszs/ack.vim'
Plug 'dracula/vim', { 'as': 'dracula' }

" Initialize plugin system
call plug#end()

" START Rainbow
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" END Rainbow

" START Personal Configuration
color dracula
:set tabstop=2
:set shiftwidth=2
:set expandtab
let g:deoplete#enable_at_startup = 1
let b:ale_linters = {'javascript': ['standard']}
let g:ackprg = 'rg --vimgrep'
cnoreabbrev rg Ack
cnoreabbrev rG Ack
cnoreabbrev Rg Ack
cnoreabbrev RG Ack
" END Personal Configuration

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
