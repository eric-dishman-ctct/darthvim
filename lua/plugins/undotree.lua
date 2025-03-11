return {
 'mbbill/undotree',
 lazy = false,
 init = function()
  vim.g.undotree_WindowLayout = 2
 end,
 keys = {
   vim.keymap.set('n', '<leader>cu', vim.cmd.UndotreeToggle, { desc = "Toggle Undotree" })
},
}
