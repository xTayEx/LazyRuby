require("lazy").setup({
    {
        "nvim-lualine/lualine.nvim",
        lazy = false,
        config = true
    },
    { "nvim-tree/nvim-web-devicons" },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme tokyonight]])
        end,
    },
    {
        "williamboman/mason.nvim",
        build = ":MasonUpdate",
        config = true
    },
    {
        "windwp/nvim-autopairs",
        config = true
    },
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },

    { "L3MON4D3/LuaSnip" }
})
