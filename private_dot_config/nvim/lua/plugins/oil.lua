return {
  "stevearc/oil.nvim",
  lazy = false,
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  keys = {
    { "<leader>o", "", desc = "open" },
    { "<leader>oo", "<cmd>Oil<cr>", desc = "open oil" },
  },
}
