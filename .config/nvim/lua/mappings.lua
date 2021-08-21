-- mappings.lua

local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true}

-- set leader to space
keymap('n', 'SPACE', '<Nop>', opts)
vim.g.mapleader = ' '

-- load workman layout
-- source $HOME/.config/nvim/settings/workman-mapping.vim

-- coc mappings
vim.cmd('source $HOME/.config/nvim/plug-settings/coc.vim')

-- copy / paste to/from system clipboard
keymap('v', '<C-y>', '"+y', opts)
keymap('n', '<C-p>', '"+P', opts)

-- Search and replace word on cursor
keymap('n', '<Leader>*', ':%s/<<C-r><C-w>>/', opts)
-- Search and replace word on cursor for all files
vim.cmd('nnoremap <Leader>S :let @s=expand("<cword>")<CR> :grep <C-r>s<CR> :copen<CR> :cfdo %s/<C-r>s//gc<LEFT><LEFT><LEFT>') 


-- Open a tab
keymap('n', '<Leader>t', ':tabnew<CR>', opts)
-- Close a window/tab
keymap('n', '<Leader>w', ':close<CR>', opts)
-- Keep focused window, remove the rest
keymap('n', '<Leader>c', ':on<CR>', opts)

-- edit vimrc in a split
keymap('n', '<Leader>ev', ':vsplit $MYVIMRC<cr>', opts)

-- Set working directory to current file
keymap('n', '<Leader>ed', ':cd %:p:h<CR>: echo "Working Dir is now:" expand("%:p:h")<CR>', opts)

-- Quickly make directory for the current buffer
keymap('n', '<Leader>em', ':!mkdir -p %:h<CR> :echo "Created Dir: " expand("%:h")<CR>', opts)

-- Navigate buffers
keymap('n', '<Leader>bn', ':bnext<cr>', opts)
keymap('n', '<Leader>bm', ':bprevious<cr>', opts)
keymap('n', '<Leader>bd', ':bd<cr>', opts)
-- Removes all buffers except for current one
keymap('n', '<Leader>bc', [[:%bd\|e#<cr>]], opts)

-- Clear word highlights
keymap('n', '\\', ':noh<CR>', opts)

-- Open with Ranger
keymap('n', '<Leader>o', ':Ranger<CR>', opts)

-- use to escape terminal mode
keymap('t', '<Esc>', [[<C-\><C-n>]], opts)

-- FZF
keymap('n', '<Leader>ff', ':GFiles<CR>', opts)
keymap('n', '<Leader>fF', ':Files<CR>', opts)
keymap('n', '<Leader>fg', ':Rg<CR>', opts)
keymap('n', '<Leader>fb', ':Buffers<CR>', opts)
keymap('n', '<C-t>', ':Tags<CR>', opts)

-- Show tasks list
keymap('n', '<leader>st', ':!task list<CR>', opts)
-- October move
keymap('n', '<leader>sm', ':!cat $HOME/documents/oct2020-move-tasks.todo.md<CR>', opts)

-- Show highlights
-- function! SynStack ()
--     for i1 in synstack(line("."), col("."))
--         let i2 = synIDtrans(i1)
--         let n1 = synIDattr(i1, "name")
--         let n2 = synIDattr(i2, "name")
--         echo n1 "->" n2
--     endfor
-- endfunction
-- map <leader>em :call SynStack()<CR>
