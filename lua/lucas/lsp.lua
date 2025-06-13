
--lua-language-server - for lua
vim.lsp.enable("lua_ls")

-- pyright - for python
vim.lsp.enable("pyright")

vim.diagnostic.config({
	virtual_text = { show = "last" },
})

vim.diagnostic.enable()
