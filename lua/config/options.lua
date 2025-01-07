-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.foldnestmax = 10
-- opt.foldlevel = 2
-- opt.foldmethod = "indent"
opt.autochdir = true
opt.colorcolumn = "80"
opt.redrawtime = 3000

-- vim.g.lazyvim_python_lsp = "pyright"
-- vim.g.lazyvim_python_ruff = "ruff_lsp"
vim.g.lazyvim_prettier_needs_config = false
vim.g.snacks_animate = false
