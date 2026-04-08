-- set "leader" to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("config.options")
require("config.keymaps")
require("config.lazy")

vim.api.nvim_create_autocmd('FileType', {
  pattern = {
    "c",
    "python",
    "lua",
    "javascript",
    "typescript",
    "tsx",
  },
  callback = function()
    vim.treesitter.start()
  end,
})
