return {
  "folke/noice.nvim",
  dependencies = { "rcarriga/nvim-notify" },
  opts = {
    messages = {
      view = "mini",
      view_error = "mini",
      view_warn = "mini",
    },
    lsp = {
      messages = {
        view = "mini",
      },
    },
  },
}
