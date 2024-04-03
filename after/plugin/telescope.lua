
require('telescope').setup({
    defaults = {
        file_ignore_patterns = {
            "node_modules",
        },
    }
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>sf', builtin.git_files, {})
vim.keymap.set('n', '<leader>gf', function()
    builtin.grep_string({search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>sn', function()
    builtin.find_files { cwd = vim.fn.stdpath 'config' }
end)
