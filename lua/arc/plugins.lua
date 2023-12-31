local status, packer = pcall(require, 'packer')
if (not status) then 
    print("Packer is not installed")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Gui Enhancements
    use 'morhetz/gruvbox'
    use 'chriskempson/base16-vim'
    use 'itchyny/lightline.vim'
    use 'andymass/vim-matchup'

    -- Lsp
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/lsp_extensions.nvim'
    use {'hrsh7th/cmp-nvim-lsp', branch = 'main'}
    use {'hrsh7th/cmp-buffer', branch = 'main'}
    use {'hrsh7th/cmp-path', branch = 'main'}
    use {'hrsh7th/nvim-cmp', branch = 'main'}
    use 'ray-x/lsp_signature.nvim'

    -- Multi Cursors
    use {'mg979/vim-visual-multi', branch = 'master'}

    -- Only because nvim-cmp _requires_ snippets
    use {'hrsh7th/cmp-vsnip', branch = 'main'}
    use 'hrsh7th/vim-vsnip'

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

    -- Autotags and autopairs
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Null-ls
    use 'jose-elias-alvarez/null-ls.nvim'

    -- Prettier
    use('MunifTanjim/prettier.nvim')

    -- Mason
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'

    -- Comments
    use 'terrortylor/nvim-comment'

    -- Vim Enhancement
    use 'ciaranm/securemodelines'
    use 'editorconfig/editorconfig-vim'
    use 'justinmk/vim-sneak'

    -- Harpoon
    use('nvim-lua/plenary.nvim')
    use('ThePrimeagen/harpoon')

    -- Ayu Themes
    use('Shatur/neovim-ayu')

    -- Catppuccin Theme
    use { "catppuccin/nvim", as = "catppuccin" }

    -- Rose Pine theme
    use "rose-pine/neovim"

    -- Go setup
    use 'ray-x/go.nvim'
    use 'ray-x/guihua.lua'

    -- Debugger
    use "mfussenegger/nvim-dap"

    -- Go snippets
    use("olexsmir/gopher.nvim")

    -- Nvim tree
    use("nvim-tree/nvim-tree.lua")

    -- Webdev icons
    use 'nvim-tree/nvim-web-devicons'

    -- Inlay hints
    -- use 'simrat39/inlay-hints.nvim'
    use 'simrat39/rust-tools.nvim'
    use('lvimuser/lsp-inlayhints.nvim')

    -- Dracula Theme
    use{"dracula/vim", as = "dracula"}

    -- vim tmux navigator
    use('christoomey/vim-tmux-navigator')

    -- Css color
    use {
        'rrethy/vim-hexokinase',
        run = 'make hexokinase'
    }


end)
