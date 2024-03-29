local builtin = require('telescope.builtin')
-- "project files"
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- only git files
vim.keymap.set('n', '<leader>pg', builtin.git_files, {})

-- "project search" requires brew install ripgrep on Mac 
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") }); 
end)
