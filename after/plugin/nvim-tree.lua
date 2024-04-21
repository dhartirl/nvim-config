local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)


    -- Nvim Tree
    vim.keymap.set("n", "<leader><Tab>", function()
        api.tree.open({
            find_file = true,
        })
    end)
    vim.keymap.set("n", "<leader><leader><Tab>", api.tree.close)
end

require("nvim-tree").setup({
    sort = {},
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {},
    on_attach = my_on_attach,
})
