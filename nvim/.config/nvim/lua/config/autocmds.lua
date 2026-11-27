-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Transparent floating windows + visible float borders
local function transparent_floats()
  -- Floats (lazygit, Telescope, snacks, etc.) use NormalFloat.
  -- Linking it to Normal makes their background transparent.
  vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
  -- poimandres sets FloatBorder fg to the panel color (#171922), which is invisible.
  vim.api.nvim_set_hl(0, "FloatBorder", { link = "NonText" }) -- #7390aa
end

vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("user_transparent_floats", { clear = true }),
  callback = transparent_floats,
})

-- LazyVim may load this file after the initial colorscheme (VeryLazy), so apply now too.
transparent_floats()
