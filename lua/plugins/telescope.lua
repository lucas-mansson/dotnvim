local builtin = require('telescope.builtin')
-- "n": normal mode. next is the buttons to be pressed.

-- All file search: "space -> f -> f"
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' }) 

-- Files that are just in a git repo: Ctrl+P
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find git files' }) 

-- Run grep command: space -> p -> s
-- This requires ripgrep installed
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") }); 
end, { desc = 'Telescope grep string input' }) 

