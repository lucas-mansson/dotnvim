return {
  "shortcuts/no-neck-pain.nvim",
  version = "*",
  width = 120,
  config = function()
    --vim.cmd("NoNeckPain")
    require("no-neck-pain").setup({
      width = 150,
      autocmds = {
        enableOnVimEnter = true,
      }
    })
  end

}
