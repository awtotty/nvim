local builtin = require('telescope.builtin')
-- "project files"
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- only git files
vim.keymap.set('n', '<leader>pg', builtin.git_files, {})

-- "project search" requires brew install ripgrep on Mac 
vim.keymap.set('n', '<leader>ps', function() 
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- create a new file
vim.keymap.set('n', '<leader>pn', function()
    local filename = vim.fn.input("New file: ")
    if filename ~= "" then
        vim.cmd("edit " .. filename)
    end
end)

-- delete a file
vim.keymap.set('n', '<leader>pd', function()
    local filename = vim.fn.input("Delete file: ")
    if filename ~= "" then
        -- Check if the file exists before trying to delete it
        if vim.fn.filereadable(filename) ~= 1 then
            print("File does not exist: " .. filename)
            return
        end
        local confirm = vim.fn.input("Are you sure you want to delete " .. filename .. "? (y/N) ")
        if confirm:lower() ~= 'y' then
            print("Deletion cancelled.")
        else
            vim.cmd("silent !rm " .. filename)
            print("Deleted file: " .. filename)
        end
    end
end)
