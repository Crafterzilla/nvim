-- This file can be loaded by calling `lua require('plugins')` from your init.vim

local plugins = {
    -- Themes for Neovim
        {'EdenEast/nightfox.nvim'},

        -- Lualine
        {
            'nvim-lualine/lualine.nvim',
            dependencies = {'nvim-tree/nvim-web-devicons'}
        },

        {'xiyaowong/transparent.nvim'}, --Transparancy

    -- Text Highlighting
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

    -- Undo tree
    {'mbbill/undotree'},


    -- Fuzzy finder
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- Lsp Insataller and Foundation
    {
        {'VonHeikemen/lsp-zero.nvim'},
        {'neovim/nvim-lspconfig'},
        -- Manage LSP's with mason
        {'williamboman/mason.nvim'},
        {'williamboman/mason-lspconfig.nvim'},
    },

    -- Autocmp for Neovim
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},

    -- Autopairs for (),"",{},[] autocomplete
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function()
            require("nvim-autopairs").setup {}
        end
    },

    -- Comment out lines with gcc and gc
    {'tpope/vim-commentary'},


    -- Integrated Neovim Terminal
    {'akinsho/toggleterm.nvim', version = "*", config = true},

    -- Code Runner for simple projects
    { "CRAG666/code_runner.nvim", config = true },

    -- Save Vim Session Positions
    {'tpope/vim-obsession'},

    -- DAP for Nvim
    {"rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap"}},

    --Arduino Integration
    {'stevearc/vim-arduino'},

    -- Use Ranger for file explorer
    {'iberianpig/ranger-explorer.vim'},
    {'rbgrouleff/bclose.vim'}
}


require("lazy").setup(plugins, opts)
