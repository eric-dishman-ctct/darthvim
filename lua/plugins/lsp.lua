return
{
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "folke/lazydev.nvim",
      ft = "lua",
      opts = {
        library = {
          { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          { path = "snacks.nvim",        words = { "Snacks" } },
          { path = "lazy.nvim",          words = { "LazyVim" } },
        },
      },
    },
  },
  config = function()
    local lsp = require('lspconfig')
    lsp.matlab_ls.setup({
      cmd = { 'matlab-language-server', '--stdio' },
      filetypes = { 'matlab' },
      root_dir = function(fname)
        return vim.fs.dirname(vim.fs.find('.git', { path = fname, upward = true })[1])
      end,
      single_file_support = false,
      settings = {
        MATLAB = {
          indexWorkSpace = true,
          installPath = 'C:\\MATLAB\\R2021b',
          matlabConnectionTiming = 'onStart',
          telemetry = false,
        },
      },
    })
    lsp.lua_ls.setup {}
    print("Running powershell_es setup()")
    lsp.powershell_es.setup {
      -- cmd = { 'pwsh', '-NoLogo', '-NoProfile', '-Command', vim.fn.stdpath "data" .. '/servers/PSES/PowerShellEditorServices/Start-EditorServices.ps1', 'Stdio' }
      bundle_path = vim.fn.stdpath "data" .. '/servers/PSES',
    }

    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        print("Vader rules")
        if not client then return end
        print("Join the dark side")
        if client:supports_method('textDocument/formatting') then
          -- Format the current buffer on save
          vim.api.nvim_create_autocmd('BufWritePre', {
            buffer = args.buf,
            callback = function()
              vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
            end,
          })
        end
      end,
    })
  end,
}
