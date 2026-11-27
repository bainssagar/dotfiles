-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Sync the unnamed register with the system clipboard (yank/paste/cut).
-- Deletes are routed to the black hole register in config/keymaps.lua.
vim.opt.clipboard = "unnamedplus"
vim.o.winborder = "rounded"
