-- Keymaps for Neovim, this does not include keymaps for plugins
-- Plugin keymaps are contained in the associated lua file in the
-- plugins directory

local map = vim.keymap.set

-- quit
map('n', '<leader>qq', '<cmd>qa<cr>', { desc = 'Quit All' })

-- save and quit
map('n', '<leader>wwq', '<cmd>wq<cr>', { desc = 'Save and Quit' })

-- better indenting
map('v', '<', '<gv')
map('v', '>', '>gv')

-- commenting
map('n', 'gco', 'o<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>', { desc = 'Add Comment Below' })
map('n', 'gcO', 'O<esc>Vcx<esc><cmd>normal gcc<cr>fxa<bs>', { desc = 'Add Comment Above' })
