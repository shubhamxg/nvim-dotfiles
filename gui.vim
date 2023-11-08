"-------------------------
" Setting Up Gui
"--------------------------

if has('nvim')
    "set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
    set inccommand=nosplit
    noremap <C-q> :confirm qall<CR>
end

" deal with colors
if !has('gui_running')
  set t_Co=256
endif
if (match($TERM, "-256color") != -1) && (match($TERM, "screen-256color") == -1)
  " screen does not (yet) support truecolor
  set termguicolors
endif
set background=dark
let base16colorspace=256
let g:base16_shell_path="~/dev/others/base16/templates/shell/scripts/"
colorscheme base16-gruvbox-dark-hard
"colorscheme quiet
syntax on
hi Normal ctermbg=NONE


"-------------------------
" Customizing
"--------------------------

" Customize the highlight a bit.
" Make comments more prominent -- they are important.
lua << END
local bools = vim.api.nvim_get_hl(0, { name = 'Boolean' })
vim.api.nvim_set_hl(0, 'Comment', bools)
END
" Make it clearly visible which argument we're at.
lua << END
local marked = vim.api.nvim_get_hl(0, { name = 'PMenu' })
vim.api.nvim_set_hl(0, 'LspSignatureActiveParameter', { fg = marked.fg, bg = marked.bg, ctermfg = marked.ctermfg, ctermbg = marked.ctermbg, bold = true })
END
