-- Add any additional keymaps here
vim.keymap.set("n", "<c-a>", "ggVG")

-- Send deleted text to the black hole register
vim.keymap.set({ "n", "v" }, "d", '"_d', { desc = "Delete without copying" })
vim.keymap.set({ "n", "v" }, "D", '"_D', { desc = "Delete to end of line without copying" })
vim.keymap.set({ "n", "v" }, "c", '"_c', { desc = "Change without copying" })
vim.keymap.set({ "n", "v" }, "C", '"_C', { desc = "Change to end of line without copying" })
