-- init.lua

-- load plugins
vim.cmd('source $HOME/.config/nvim/vim-plug/plugins.vim')
-- load settings
vim.cmd('source $HOME/.config/nvim/settings/general.vim')
-- load mappings
require('mappings')

-- just for vim-lsc-dart
-- let g:lsc_auto_map = v:true
