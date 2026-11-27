-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- Select all text
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })
vim.keymap.set("x", "<C-a>", "gg0oG$", { desc = "Select all" })

-- Clipboard: yank/paste use the system clipboard (`clipboard=unnamedplus`).
vim.keymap.set({ "n", "v" }, "d", '"_d', { desc = "Delete (keep clipboard)" })
vim.keymap.set({ "n", "v" }, "D", '"_D', { desc = "Delete to end of line (keep clipboard)" })
vim.keymap.set("n", "x", '"_x', { desc = "Delete character (keep clipboard)" })
vim.keymap.set("n", "X", '"_X', { desc = "Delete character before (keep clipboard)" })
vim.keymap.set("n", "c", '"_c', { desc = "Change (keep clipboard)" })
vim.keymap.set("n", "C", '"_C', { desc = "Change to end of line (keep clipboard)" })
vim.keymap.set("x", "x", '"+x', { desc = "Cut to system clipboard" })
vim.keymap.set("x", "X", '"+X', { desc = "Cut to system clipboard" })
