return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      local mason_lsp = require("mason-lspconfig")
      mason_lsp.setup({
        ensure_installed = { "pyright", "ruff", "clangd", "lua_ls", "bashls" },
      })

      -- Attach LSPs using the new API
      local servers = { "pyright", "ruff", "clangd", "lua_ls", "bashls" }
      for _, server in ipairs(servers) do
        vim.lsp.config(server, {})
        vim.lsp.enable(server)
      end
    end
  }
}

