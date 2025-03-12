-- NOTE: Helper functions

-- local DarthVim = setmetatable({}, {
--   __call = function(m, ...)
--     return m.get(...)
--   end,
-- })
--
-- function DarthVim.git()
--   local root = DarthVim.get()
--   local git_root = vim.fs.find(".git", { path = root, upward = true })[1]
--   local ret = git_root and vim.fn.fnamemodify(git_root, ":h") or root
--   return ret
-- end

return
{
  "folke/snacks.nvim",
  opts = {
    lazygit = { enabled = true },
  },
  keys = {
    -- { '<leader>gg', function() Snacks.lazygit( { cwd = DarthVim.git() }) end, desc = 'Lazygit (Root Dir)' },
    { '<leader>gG', function() Snacks.lazygit() end, desc = 'Lazygit (cwd)' },
    -- { '<leader>gf', function() Snacks.picker.git_log_file() end, desc = 'Git Current File History' },
    -- { '<leader>gl', function() Snacks.picker.git_log({ cwd = DarthVim.git() }) end, desc = 'Git Log (Root Dir)' },
    -- { '<leader>gL', function() Snacks.picker.git_log() end, desc = 'Git Log (cwd)' },
  },
}
