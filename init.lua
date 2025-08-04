vim.g.mapleader = " "

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

-- go to netrw nagivation
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Turn off search highlighting on esc.
vim.keymap.set('n', '<Esc>', '<Cmd>nohlsearch<CR>', { noremap = true, silent = true })

-- Move marked (v) blocks of text using J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- When pressing J (append below line to current line), the cursor doesn't move.
vim.keymap.set("n", "J", "mzJ`z")

-- When doing half-page jumping (Ctrl+U & Ctrl+D), the cursor stays in the middle.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor in the middle when searching.
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- When pasting over something, doesnt add the pasted over word to the buffer (so you can keep pasting the same thing)
vim.keymap.set("x", "<leader>p", "\"_dP")

