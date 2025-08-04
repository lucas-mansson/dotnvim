-- File: lua/plugins.lua

-- This is the "bootstrapping" part of the lazy.nvim setup.
-- Checks if lazy.nvim is installed and clones it if not.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require("lazy").setup({
  ---
  -- Automatically get pairs of parentheses.
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },

  ---
  -- Telescope is a fuzzy finder for searching files and other things.
  -- Note: `requires` is now called `dependencies` in lazy.nvim.
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  ---
  -- Set the color scheme.
  -- Note: `as` is now called `name`.
  {
    "navarasu/onedark.nvim",
    name = "onedark",
    config = function()
      vim.cmd("colorscheme onedark")
    end,
  },

  ---
  -- Treesitter: Parses code for syntax highlighting and indentation.
  -- Note: `run` is now called `build` for post-install/update commands.
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  },
  -- This is the Treesitter playground, a separate plugin.
  { "nvim-treesitter/playground" },

  ---
  -- Harpoon: Faster file navigation.
  -- Plenary.nvim is a dependency for Harpoon and is listed here.
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  ---
  -- LSP (Language Server Protocol) support.
  { "neovim/nvim-lspconfig" },

  ---
  -- lazydev.nvim: Provides a better setup for the Lua language server.
  {
    "folke/lazydev.nvim",
    ft = "lua", -- This ensures the plugin only loads when you open a Lua file.
    config = function()
      require("lazydev").setup({
        library = {
          { path = "${3rd}/luv/library", words = { "vim.uv" } },
        },
      })
    end,
  },
}, {})
