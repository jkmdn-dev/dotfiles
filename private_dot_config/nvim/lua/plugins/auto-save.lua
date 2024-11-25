return {
  "pocco81/auto-save.nvim",
  opts = {
    trigger_events = {
      "InsertLeave",
    },
    condition = function(buf)
      local fn = vim.fn -- built in neovim functions
      local utils = require("auto-save.utils.data") -- auto-save utilities for handling data

      -- utils.not_in(val, arr) is function that asserts whether `val` is contained inside `arr`
      -- so for example if you don't want to save the filetypes `"lua"` and `"python"` then you could:
      -- utils.not_in(fn.getbufvar(buf, "&filetype"), { "lua", "python" })
      if fn.getbufvar(buf, "&modifiable") == 1 and utils.not_in(fn.getbufvar(buf, "&filetype"), { "oil" }) then -- conditions to be asserted
        return true -- met condition(s), can save
      end
      return false -- can't save
    end,
    debounce_delay = 5000,
  },
}
