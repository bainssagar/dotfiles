return {
  "folke/snacks.nvim",
  opts = {
    lazygit = {
      theme = {
        -- snacks defaults these to MatchParen, whose fg is #171922 in poimandres
        activeBorderColor = { fg = "Function", bold = true },
        searchingActiveBorderColor = { fg = "Function", bold = true },
        -- inactiveBorderColor already uses FloatBorder, now visible via the autocmd above
      },
      win = {
        border = "rounded",
        backdrop = false,
      },
    },
  },
}
