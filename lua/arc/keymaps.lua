require('nvim_comment').setup()
-- Telescope Remaps
vim.api.nvim_set_keymap('n', '<leader>pf', "<cmd>lua require('telescope.builtin').find_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-p>', "<cmd>lua require('telescope.builtin').git_files()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ps', "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep > ') })<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>vh', "<cmd>lua require('telescope.builtin').help_tags()<CR>", { noremap = true })

-- Setup nvim_comment
require('nvim_comment').setup()

-- Key mappings for toggling comments
vim.api.nvim_set_keymap('n', '<leader>/', "<cmd>CommentToggle<CR>", { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>/', "<cmd>CommentToggle<CR>gv", { noremap = true })

-- Explorer
vim.api.nvim_set_keymap('n', '<leader>pv', "<cmd>Ex<CR>", { noremap = true })

-- Move lines up and down
vim.api.nvim_set_keymap('n', '<M-j>', "<cmd>m .+1<CR>==", { noremap = true })
vim.api.nvim_set_keymap('n', '<M-k>', "<cmd>m .-2<CR>==", { noremap = true })
vim.api.nvim_set_keymap('v', '<M-j>', "<cmd>m '>+1<CR>gv=gv", { noremap = true })
vim.api.nvim_set_keymap('v', '<M-k>', "<cmd>m '<-2<CR>gv=gv", { noremap = true })

-- Other key remappings
vim.api.nvim_set_keymap('n', 'J', "mzJ`z", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-d>', "<C-d>zz", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-u>', "<C-u>zz", { noremap = true })
vim.api.nvim_set_keymap('n', 'n', "nzzzv", { noremap = true })
vim.api.nvim_set_keymap('n', 'N', "Nzzzv", { noremap = true })

-- Greatest remap ever
vim.api.nvim_set_keymap('x', '<leader>p', "[['_dP]]", { noremap = true })

-- Next greatest remap ever: asbjornHaland
vim.api.nvim_set_keymap('n', '<leader>y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>Y', '"+Y', { noremap = true })

-- Delete without yanking
vim.api.nvim_set_keymap('n', '<leader>d', "[['_d]]", { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>d', "[['_d]]", { noremap = true })

-- Cancel key in insert mode
vim.api.nvim_set_keymap('i', '<C-c>', "<Esc>", { noremap = true })

-- Disable Q
vim.api.nvim_set_keymap('n', 'Q', "<nop>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-f>', "<cmd>silent !tmux neww tmux-sessionizer<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>f', "<cmd>lua vim.lsp.buf.format()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', "<cmd>cnext<CR>zz", { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', "<cmd>cprev<CR>zz", { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>k', "<cmd>lnext<CR>zz", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>j', "<cmd>lprev<CR>zz", { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>s', "<cmd>%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>x', "<cmd>!chmod +x %<CR>", { noremap = true })

-- For sourcing a file
-- vim.api.nvim_set_keymap('n', '<leader><leader>', "<cmd>source <your_file_here><CR>", { noremap = true })

-- No arrow keys
vim.api.nvim_set_keymap('n', '<up>', "<nop>", { noremap = true })
vim.api.nvim_set_keymap('n', '<down>', "<nop>", { noremap = true })
vim.api.nvim_set_keymap('i', '<up>', "<nop>", { noremap = true })
vim.api.nvim_set_keymap('i', '<down>', "<nop>", { noremap = true })
vim.api.nvim_set_keymap('i', '<left>', "<nop>", { noremap = true })
vim.api.nvim_set_keymap('i', '<right>', "<nop>", { noremap = true })

-- Left and right can switch buffers
vim.api.nvim_set_keymap('n', '<left>', "<cmd>bp<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<right>', "<cmd>bn<CR>", { noremap = true })

-- Lua function calls (should be kept as is if these are Lua functions)
vim.api.nvim_set_keymap('n', '<leader>vwm', "<cmd>call v:lua.require'vim-with-me'.StartVimWithMe()<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>svwm', "<cmd>call v:lua.require'vim-with-me'.StopVimWithMe()<CR>", { noremap = true })

-- Note: For the <leader>mr mapping, you would need to specify how to handle the `cellularautomaton make_it_rain` in Lua.
-- The Lua equivalent isn't provided here as it's not clear what the `cellularautomaton` function does or how it's implemented in Lua.

-- Quick-save
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', {noremap = true})

-- Don't confirm .lvimrc
vim.g.localvimrc_ask = 0

-- rust
vim.g.rustfmt_autosave = 1
vim.g.rustfmt_emit_files = 1
vim.g.rustfmt_fail_silently = 0
vim.g.rust_clip_command = 'xclip -selection clipboard'

-- Completion
vim.opt.completeopt = {'menuone', 'noinsert', 'noselect'}

-- Better display for messages
vim.opt.cmdheight = 2

-- Updatetime for better diagnostic messages
vim.opt.updatetime = 300
