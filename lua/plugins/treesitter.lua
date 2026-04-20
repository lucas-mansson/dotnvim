return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter').setup({
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      })

      require('nvim-treesitter').install({
        "c",
        "python",
        "lua",
        "javascript",
        "typescript",
        "tsx",
        "jsx",
        "kotlin"
      })
      vim.treesitter.language.register('tsx', 'typescriptreact')
    end
  }
}
