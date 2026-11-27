return {
  "folke/noice.nvim",
  opts = {
    lsp = {
      hover = {
        enabled = true,
      },
    },
    views = {
      hover = {
        border = {
          style = "rounded",
        },
        win_options = {
          winhighlight = {
            Normal = "NormalFloat",
            FloatBorder = "FloatBorder",
          },
        },
      },
    },
  },
}
