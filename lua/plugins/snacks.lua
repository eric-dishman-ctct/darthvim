return 
{
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  -- opts = {
  --   scope = { enabled = true },
  --   statuscolumn = { enabled = false }, -- we set this in options.lua
  --   -- toggle = { map = LazyVim.safe_keymap_set },
  --   words = { enabled = false },
  -- },
  -- stylua: ignore
  -- keys = {
  --   { "<leader>n", function()
  --     if Snacks.config.picker and Snacks.config.picker.enabled then
  --       Snacks.picker.notifications()
  --     else
  --       Snacks.notifier.show_history()
  --     end
  --   end, desc = "Notification History" },
  --   { "<leader>un", function() Snacks.notifier.hide() end, desc = "Dismiss All Notifications" },
  -- },
}
