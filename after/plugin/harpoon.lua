local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>p", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<TAB>1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<TAB>2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<TAB>3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<TAB>4", function() ui.nav_file(4) end)

