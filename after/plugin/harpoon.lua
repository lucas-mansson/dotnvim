local harpoon = require("harpoon")

harpoon:setup()

-- Add current file to harpoon
vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)

-- Toggle open quick menu
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

-- Keybindings for navigation
vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

