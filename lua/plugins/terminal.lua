return
{
  "folke/snacks.nvim",
  opts = {
    terminal = { 
      enabled = true,
    },
  },
  keys = {
    { '<c-/>', function() Snacks.terminal() end, mode = 'n', desc = 'Toggle Terminal' },
    { '<c-_>', function() Snacks.terminal() end, mode = 'n', desc = 'which_key_ignore' },
    { '<c-/>', '<cmd>close<cr>', mode = 't', desc = 'Hide Terminal' },
    { '<c-_>', '<cmd>close<cr>', mode = 't', desc = 'which_key_ignore' },
  },
}
