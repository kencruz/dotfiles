-- init.lua

-- load plugins
vim.cmd('source $HOME/.config/nvim/vim-plug/plugins.vim')
-- load settings
vim.cmd('source $HOME/.config/nvim/settings/general.vim')
-- load mappings
require('mappings')
-- nvim-compe settings
require('compe-config')
-- lsp language support
require('lsp')
-- autopairs setup
require('nvim-autopairs').setup{}
require("nvim-autopairs.completion.compe").setup({
  map_cr = true, --  map <CR> on insert mode
  map_complete = true, -- it will auto insert `(` after select function or method item
  auto_select = false,  -- auto select first item
})

-- just for vim-lsc-dart
-- let g:lsc_auto_map = v:true
