-- Set system clipboard equal to vim 
vim.opt.clipboard = "unnamedplus"

-- Set relative and absolute line numbers
vim.opt.number = true
vim.wo.relativenumber = true

-- Four space indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Disable line wrapping
vim.opt.wrap = false

-- Terminal coloring
vim.opt.termguicolors = true

vim.opt.scrolloff = 8

-- Apply two-space tab indentation on ts, js, tsx, and jsx files
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"javascript", "typescript", "typescriptreact", "javascriptreact"},
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.expandtab = true
  end,
})

