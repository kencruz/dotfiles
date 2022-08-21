-- init.lua

-- load plugins
vim.cmd('source $HOME/.config/nvim/vim-plug/plugins.vim')
-- load settings
vim.cmd('source $HOME/.config/nvim/settings/general.vim')
-- load mappings
require('mappings')

require('nvim-autopairs').setup{}
-- require("nvim-autopairs.completion.compe").setup({
--   map_cr = true, --  map <CR> on insert mode
--   map_complete = true, -- it will auto insert `(` after select function or method item
--   auto_select = false,  -- auto select first item
-- })

-- status line
require'lualine'.setup{
  options = {
    theme = 'gruvbox'
  },
  sections = {
    lualine_c = {'filename', 'buffers'}
  }
}

-- nvim-compe settings
-- require('compe-config')
require('cmp-config')

-- lsp language support
require('lsp')
-- disable inline diagnostic errors
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false
    }
)
-- autopairs setup

-- just for vim-lsc-dart
-- let g:lsc_auto_map = v:true
