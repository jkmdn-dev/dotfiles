do
  return {}
end

return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      -- tsserver will be automatically installed with mason and loaded with lspconfig
      -- lua_ls = {
      --  settings = {
      --    Lua = {}
      --  }
      -- },
    },
  },
}
