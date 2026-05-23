return {
  {
    "webhooked/kanso.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
    config = function()
      require("kanso").setup(opts)
      vim.cmd([[colorscheme kanso-zen]])
    end,
  },
}
