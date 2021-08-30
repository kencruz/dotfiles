" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'rust-lang/rust.vim'
"Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-gruvbox8'
"Plug 'jiangmiao/auto-pairs'
Plug 'francoiscabrol/ranger.vim'
Plug 'chrisbra/Colorizer'
let g:ranger_map_keys=0
" Dependency for ranger
Plug 'rbgrouleff/bclose.vim'

" Tree sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'nvim-treesitter/playground'
" auto-pairs for nvim
Plug 'windwp/nvim-autopairs'

" Dart for flutter dev
"Plug 'dart-lang/dart-vim-plugin'
"Plug 'natebosch/vim-lsc'
"Plug 'natebosch/vim-lsc-dart'

" coc-nvim autocompletion
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" let g:coc_global_extensions = [
"   \ 'coc-tsserver'
"   \ ]
" Plug 'rafcamlet/coc-nvim-lua' " for nvim lua api autocomplete

" Native LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
" Extensions to built-in LSP, for example, providing type inlay hints
Plug 'nvim-lua/lsp_extensions.nvim'

" JS-TS-React-GraphQL
 " Plug 'jelera/vim-javascript-syntax'
Plug 'pangloss/vim-javascript'
" Plug 'leafgarland/typescript-vim'
"this is typescript Plug 'HerringtonDarkholme/yats.vim'
" Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

" Possible that this messes with syntax highlighting
" Plug 'prettier/vim-prettier', {
"  \ 'do': 'npm install',
"  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'vue', 'svelte', 'yaml', 'html'] }
" let g:prettier#autoformat = 1
" let g:prettier#autoformat_require_pragma = 0


" JS-TS-React-GraphQL
" Plug 'pangloss/vim-javascript'
" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'maxmellon/vim-jsx-pretty'
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'jparise/vim-graphql'

" vimtex stuff no longer used
" Plug 'lervag/vimtex'
" let g:tex_flavor='latex'
" let g:vimtex_view_method='zathura'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'ludovicchabant/vim-gutentags'

" git browsing
Plug 'mhinz/vim-signify'
" default updatetime 4000ms is not good for async update
set updatetime=100
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

"Todo list
Plug 'aserebryakov/vim-todo-lists'

" Vim airline
Plug 'vim-airline/vim-airline'

" Easy register hints
Plug 'junegunn/vim-peekaboo'

" Workman layout
" Plug 'nicwest/vim-workman'

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Easy html tagging

Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align

call plug#end()
