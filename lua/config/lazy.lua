-- Checks if lazy.nvim is installed and clones it if not.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", 
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require("lazy").setup({

  require("plugins.editor"),
  require("plugins.harpoon"),
  require("plugins.lsp"),
  require("plugins.telescope"),
  require("plugins.treesitter")

}, {})
