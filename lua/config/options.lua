vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

local opt = vim.opt

opt.completeopt = 'menu,menuone,noselect'

opt.conceallevel = 2 -- Hide * markup for bold and italic, but not markers with substitutions

opt.cursorline = true

opt.expandtab = true

opt.number = true -- Show line numbers
opt.relativenumber = true -- Relative line numbers

opt.foldlevel = 99

opt.mouse = 'a'

vim.schedule(function()
	opt.clipboard = 'unnamedplus'
end)

opt.breakindent = true

opt.undofile = true -- Turn on undo file
opt.undolevels = 10000 -- Number of edits to save

opt.ignorecase = true -- Ignore case
opt.smartcase = true -- Don't ignore case with capitals

opt.signcolumn = 'yes' -- Always show the signcolumn, otherwise it would shift the text each time

opt.splitright = true -- Put new windows right of current
opt.splitbelow = true -- Put new windows below current
opt.splitkeep = 'screen'
opt.winminwidth = 5 -- Minimum window width

opt.virtualedit = 'block' -- Allow cursor to move where there is no text in visual block

opt.wildmode = 'longest:full,full' -- Command-Line completion mode

opt.inccommand = 'split' -- Preview substitutions

opt.scrolloff = 10 -- Lines of context
opt.sidescrolloff = 8 -- Columns of context
opt.smoothscroll = true

opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- Size of an indent
opt.smartindent = true -- Insert indents automatically

opt.tabstop = 2 -- Number of spaces tabs count for

opt.wrap = false -- Disable line wrap

opt.termguicolors = true -- True color support
