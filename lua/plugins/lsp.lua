return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
      })
    end,
  },

  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright", "gopls", "ts_ls", "texlab" },
        automatic_installation = true,
      })
    end,
  },

  {
    "folke/lazydev.nvim",
    ft = "lua",
    dependencies = { "mason.nvim" },
    config = function()
      require("lazydev").setup({
        library = {
          { path = "${3rd}/luv/library", words = { "vim.uv" } },
        },
      })
    end,
  },

  {
    "mfussenegger/nvim-jdtls",
    ft = { "java" }, -- only load for Java files
  },
}

