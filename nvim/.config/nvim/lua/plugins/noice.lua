return {
  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true, -- Adds a border to hover docs and signature help
      },
      views = {
        hover = {
          border = {
            style = "rounded",
          },
        },
      },
    },
  },
}
