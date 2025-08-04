return {
  "neovim/nvim-lspconfig",

  -- Mason is the language server installer and manager.
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    config = function()
      require("mason").setup()
    end,
  },

  -- This plugin bridges Mason with lspconfig.
  -- It automatically sets up servers that Mason has installed.
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright", "gopls", "tsserver" },
      })
    end,
  },

  -- lazydev.nvim: Provides a better setup for the Lua language server.
  {
    "folke/lazydev.nvim",
    ft = "lua", -- This ensures the plugin only loads when you open a Lua file.
    dependencies = { "mason.nvim" }, -- Ensure lazydev waits for mason to be configured.
    config = function()
      require("lazydev").setup({
        library = {
          { path = "${3rd}/luv/library", words = { "vim.uv" } },
        },
      })
    end,
  },

  config = function()
    local lspconfig = require("lspconfig")
    --
    -- Enable inline virtual text diagnostics.
    vim.diagnostic.config({
      virtual_text = { show = "last" },
    })

  end,
}
