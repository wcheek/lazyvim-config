-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- This file is automatically loaded by lazyvim.config.init
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<M-w>", "za", { desc = "Toggle fold" })
map("v", "<M-w>", "zf", { desc = "Toggle fold" })
map("n", "<M-q>", "gcc", { desc = "Toggle comment" })
-- map("n", "oo", "o<Esc>k", { desc = "Insert new line under" })
-- map("n", "OO", "O<Esc>j", { desc = "Insert new line above" })
map("i", "jj", "<Esc>", { desc = "Leave insert mode" })
