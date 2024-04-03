vim.keymap.set("n", "<leader><Tab>", vim.cmd.NvimTreeOpen)
vim.keymap.set("n", "<leader><leader><Tab>", vim.cmd.NvimTreeClose)

-- Primeagen - Move lines up/down (visual)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Primeagen - Keep cursor centered during actions
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Primeagen - paste in visual without overwriting buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Primeagen - yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>Y", "\"+Y")

-- Primeagen - delete to void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Primeagen - do not stare directly at Q
vim.keymap.set("n", "Q", "<nop>")

-- Primeagen - quick fix nav
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Primeagen - find/replace current word
vim.keymap.set("n", "<leader>fr", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- Custom - Format file
vim.keymap.set("n", "<C-f>", "gg=G``zz")
