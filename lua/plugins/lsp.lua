-- Diagnostics options Enable inline virtual text diagnostics
vim.diagnostic.config({
	virtual_text = { show = "last" },
})
vim.diagnostic.enable()

--lua-language-server - for lua
vim.lsp.enable("lua_ls")

-- pyright - for python
vim.lsp.enable("pyright")
