vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- This is to make your line/s move up and down
vim.api.nvim_set_keymap('n', '<M-j>', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-k>', ':m .-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<M-j>', ':m \'>+1<CR>gv=gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<M-k>', ':m \'<-2<CR>gv=gv', { noremap = true, silent = true })
-- Save  
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', {noremap = true})

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/lua/pure/packer.lua<cr>");
vim.keymap.set("n", "<leader>mr", "<cmd>cellularautomaton make_it_rain<cr>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Copy to clipboard
-- Normal mode mappings
vim.api.nvim_set_keymap('n', '<C-y>', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', '"+gP', { noremap = true, silent = true })

-- Visual mode mappings
vim.api.nvim_set_keymap('x', '<C-y>', '"+y', { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', '<C-p>', '"+gP', { noremap = true, silent = true })

