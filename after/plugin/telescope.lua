
require('telescope').setup({
    defaults = {
        file_ignore_patterns = {
            "node_modules",
        },
    },
    extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    }
  }
})

require('telescope').load_extension('fzf')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>sf', builtin.git_files, {})
vim.keymap.set('n', '<leader>t', builtin.resume, {})
vim.keymap.set('n', '<leader>gf', function()
    builtin.grep_string({search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>sn', function()
    builtin.find_files { cwd = vim.fn.stdpath 'config' }
end)

