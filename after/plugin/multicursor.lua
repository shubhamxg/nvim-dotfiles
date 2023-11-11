-- Function to make setting keymaps more concise
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Assuming you want to use the default mappings and just want to change a few
-- For example, let's say you want to change the 'Start Multi Cursor' from <C-n> to <C-m>

-- Normal mode mappings
map('n', '<C-m>', ':<C-u>call vm#commands#add_cursor()<CR>', {silent = true})
-- And so on for other modes and mappings you want to change...

  
