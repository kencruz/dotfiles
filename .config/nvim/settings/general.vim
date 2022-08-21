" Tabs are 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

filetype plugin on
syntax on

" dont close modified buffers 
set hidden

" natural splits
set splitbelow
set splitright

"Line numbers relative to current line
set nu rnu

" Show keystrokes before action
set showcmd
    
" enable true colors support
set termguicolors     

" gruvbox only settings
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_italicize_strings = 0
let g:gruvbox_filetype_hi_groups = 0
set background=dark
colorscheme gruvbox
" Specific highlight for jsx component
" hi jsxComponentName cterm=bold gui=bold guifg=#d3869b
" hi link jsNull jsNumber
" hi link jsFunction Structure
" hi link jsFuncName Type
" hi link jsDestructuringPropertyValue Conceal
" hi link jsFuncCall Type
" hi link jsParen Conceal
" hi link jsParenIfElse Conceal
" hi link jsVariableDef Conceal
" hi link htmlTag Conceal
" hi link htmlTagN Conceal
" hi link htmlTagName htmlPreStmt
" hi link typescriptBraces Normal
" for transparent background
" hi Normal guibg=NONE ctermbg=NONE
"
hi link TSFunction Type
hi link TSKeywordFunction Structure
hi link TSPunctBracket Comment
hi link TSVariable Identifier
hi link TSConstructor Identifier
hi link TSMethod Type
hi link TSOperator Define
hi link TSPunctDelimiter Comment
hi link TSVariableBuiltin Identifier
hi link TSTag Define
hi link TSTagDelimiter Comment
hi link TSTagAttribute Type
" airline settings -Removing pending
" let g:airline#extensions#tabline#enabled = 1

" ranger settings
" let g:ranger_command_override = 'ranger -r $HOME/.config/nvim/plug-settings/ranger'

" ripgrep for :grep
if executable("rg")
    set grepprg=rg\ --vimgrep\ --no-heading
    set grepformat=%f:%l:%c:%m,%f:%l:%m
endif

" coc settings for js linting
" if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
"   let g:coc_global_extensions += ['coc-prettier']
" endif
" 
" if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
"   let g:coc_global_extensions += ['coc-eslint']
" endif
" 
" " coc read javascript file as typescript for tsserver temporary workaround
" let g:coc_filetype_map = {'javascript' : 'typescriptreact'}


" Enable type inlay hints
" autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *
" \ lua require'lsp_extensions'.inlay_hints{ prefix = '', highlight = 'Comment', enabled = {"TypeHint", 'ChainingHint", "ParameterHint'} }
" 
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["keyword"] = "TSKeyword",
      ["namespace"] = "TSField",
      ["object_key"] = "TSNone",
      ["str_template"] = "TSComment",
      ["punctuation.special"] = "TSComment",
      ["statement_block"] = "TSComment",
      ["punctuation.bracket"] = "TSNone",
      ["condition_brackets"] = "TSNone",
      --["identity"] = "TSVariable",
    },
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  } 
}
EOF
