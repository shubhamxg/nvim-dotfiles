-- Editor settings
vim.o.autoindent = true
vim.o.timeoutlen = 300
vim.o.encoding = "utf-8"
vim.o.scrolloff = 2
vim.o.showmode = false
vim.o.hidden = true
vim.o.wrap = false
vim.o.joinspaces = false
vim.g['sneak#s_next'] = 1
vim.g['vim_markdown_new_list_item_indent'] = 0
vim.g['vim_markdown_auto_insert_bullets'] = 0
vim.g['vim_markdown_frontmatter'] = 1
vim.o.signcolumn = "yes"
vim.o.exrc = true
vim.o.secure = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.undodir = vim.fn.expand("~/.vimdid")
vim.o.undofile = true
vim.o.wildmenu = true
vim.o.wildmode = "list:longest"
vim.o.wildignore = ".hg,.svn,*~,*.png,*.jpg,*.gif,*.settings,Thumbs.db,*.min.js,*.swp,publish/*,intermediate/*,*.o,*.hi,Zend,vendor"
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = vim.fn.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true
vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.gdefault = true
vim.o.termguicolors = true
-- vim.o.isfname = vim.o.isfname .. "@-@"
vim.o.updatetime = 50
vim.o.formatoptions = "tc"
vim.o.formatoptions = vim.o.formatoptions .. "r"
vim.o.formatoptions = vim.o.formatoptions .. "q"
vim.o.formatoptions = vim.o.formatoptions .. "n"
vim.o.formatoptions = vim.o.formatoptions .. "b"
vim.o.synmaxcol = 500
vim.o.laststatus = 2
vim.o.relativenumber = true
vim.o.number = true
-- vim.o.diffopt = vim.o.diffopt .. "iwhite,algorithm:patience,indent-heuristic"
-- vim.o.colorcolumn = "80"
vim.o.showcmd = true
vim.o.mouse = "a"
vim.o.shortmess = vim.o.shortmess .. "c"
vim.o.lazyredraw = true
vim.o.ttyfast = true
vim.o.backspace = "2"
-- vim.o.guioptions = vim.o.guioptions:gsub("T", "")
vim.o.vb = false
vim.o.t_vb = ""

-- Using vim.cmd to execute Vimscript commands that have no direct Lua equivalent
-- vim.cmd [[
--  set diffopt+=indent-heuristic
--  set colorcolumn=80
--  au TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=150}
-- ]]

-- Normal mode mappings
vim.api.nvim_set_keymap('n', 'n', 'nzz', {silent = true})
vim.api.nvim_set_keymap('n', 'N', 'Nzz', {silent = true})
vim.api.nvim_set_keymap('n', '*', '*zz', {silent = true})
vim.api.nvim_set_keymap('n', '#', '#zz', {silent = true})
vim.api.nvim_set_keymap('n', 'g*', 'g*zz', {silent = true})
vim.api.nvim_set_keymap('n', '?', '?\\v', {silent = true})
vim.api.nvim_set_keymap('n', '/', '/\\v', {silent = true})
vim.api.nvim_set_keymap('c', '%s/', '%sm/', {})

-- GUI settings
vim.cmd 'set guioptions-=T'  -- Remove toolbar
vim.cmd 'set vb t_vb='  -- No more beeps
vim.cmd 'set backspace=2'  -- Backspace over newlines
vim.cmd 'set nofoldenable'
vim.cmd 'set ttyfast'
vim.cmd 'set lazyredraw'
vim.cmd 'set synmaxcol=500'
vim.cmd 'set laststatus=2'
vim.cmd 'set relativenumber'  -- Relative line numbers
vim.cmd 'set number'  -- Also show current absolute line
vim.cmd 'set diffopt+=iwhite'  -- No whitespace in vimdiff
vim.cmd 'set diffopt+=algorithm:patience'
vim.cmd 'set diffopt+=indent-heuristic'
vim.cmd 'set colorcolumn=150'  -- and give me a colored column
vim.cmd 'set showcmd'  -- Show (partial) command in status line.
vim.cmd 'set mouse=a'  -- Enable mouse usage (all modes) in terminals
vim.cmd 'set shortmess+=c'  -- don't give |ins-completion-menu| messages.

-- Highlight yank
vim.cmd 'au TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=150}'

vim.wo.cursorcolumn = false
