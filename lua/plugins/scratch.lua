return
{
  "folke/snacks.nvim",
  keys = {
    { "<leader>.", function() Snacks.scratch() end,        desc = "Toggle Scratch Buffer" },
    { "<leader>S", function() Snacks.scratch.select() end, desc = "Select Scratch Buffer" },
  },
  opts = {
    styles = {
      width = 30,
      height = 30,
      bo = { buftype = "", buflisted = false, bufhidden = "hide", swapfile = false },
      minimal = false,
      noautocmd = false,
      -- position = "right",
      zindex = 20,
      wo = { winhighlight = "NormalFloat:Normal" },
      border = "rounded",
      title_pos = "center",
      footer_pos = "center",
    },
  },
}
