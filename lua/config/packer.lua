vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.3',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use { "ellisonleao/gruvbox.nvim" }

    use {
        'nvim-treesitter/nvim-treesitter', 
        { run = ':TSUpdate' },
        config = function()
            require('nvim-treesitter.configs').setup {
                ensure_installed = "maintained",
                sync_install = false,
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
            }
        end,
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }

    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    use {
        "ExaFunction/codeium.vim",
        config = function()
            vim.keymap.set("i", "<C-g>", function() return vim.fn["codeium#Accept"]() end, {expr = true, silent = true})
        end
    }

    use {
        "mfussenegger/nvim-dap",
    }

    use {
        "rcarriga/nvim-dap-ui",
        requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" }
    }

    use {
        "theHamsta/nvim-dap-virtual-text",
        requires = { "mfussenegger/nvim-dap" }
    }

end)

