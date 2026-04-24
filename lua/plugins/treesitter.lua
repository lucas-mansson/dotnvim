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
        "kotlin",
        "haskell",
      })
      vim.treesitter.language.register('tsx', 'typescriptreact')
      vim.api.nvim_create_autocmd('FileType', {
        pattern = {
          "c",
          "python",
          "lua",
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "tsx",
          "kotlin",
          "haskell",
        },
        callback = function()
          vim.treesitter.start()
        end,
      })

      vim.filetype.add({
        extension = {
          tsx = "typescriptreact",
          ts = "typescript",
        },
      })
    end
  }
}
