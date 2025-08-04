return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter", -- Lazy-load this plugin when entering Insert mode.
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },
}
