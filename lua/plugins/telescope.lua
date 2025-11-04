return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
      -- Get the builtin functions for Telescope.
      local builtin = require('telescope.builtin')

      -- All file search: "space -> f -> f"
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })

      -- Files that are just in a git repo: Ctrl+P
      vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find git files' })

      -- Requires ripgrep
      -- Run grep command: space -> p -> s
      vim.keymap.set('n', '<leader>ps', function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
      end, { desc = 'Telescope grep string input' })

      -- "Live grep", brings up telecope and searchable grep
      vim.keymap.set('n', '<leader>lg', function()
        builtin.live_grep()
      end, { desc = 'Telescope grep string input' })
    end,
  },
}
