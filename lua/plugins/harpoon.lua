return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2", 

    -- Harpoon depends on plenary.nvim.
    -- lazy.nvim will automatically install plenary if it's not already installed
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
      local harpoon = require("harpoon")

      -- Setup Harpoon options
      harpoon.setup({})

      -- Keymaps for Harpoon.
      local term_keymaps = vim.keymap.set

      -- Add current file to harpoon list
      term_keymaps("n", "<leader>a", function()
        harpoon:list():append()
      end, { desc = "Harpoon: Add current file" })

      term_keymaps("n", "<C-e>", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = "Harpoon: Toggle quick menu" })

      -- Keybindings for navigation to specific files
      term_keymaps("n", "<C-h>", function()
        harpoon:list():select(1)
      end, { desc = "Harpoon: Go to file 1" })

      term_keymaps("n", "<C-j>", function()
        harpoon:list():select(2)
      end, { desc = "Harpoon: Go to file 2" })

      term_keymaps("n", "<C-k>", function()
        harpoon:list():select(3)
      end, { desc = "Harpoon: Go to file 3" })

      term_keymaps("n", "<C-l>", function()
        harpoon:list():select(4)
      end, { desc = "Harpoon: Go to file 4" })
    end,
  },
}
