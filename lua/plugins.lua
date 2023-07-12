require("lazy").setup({
	{ "nvim-lualine/lualine.nvim", lazy = false, config = true },
	{ "nvim-tree/nvim-web-devicons" },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
	{ "williamboman/mason.nvim", build = ":MasonUpdate", config = true },
	{ "windwp/nvim-autopairs", config = true },
	{ "neovim/nvim-lspconfig" },
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = { "hrsh7th/cmp-nvim-lsp" },
	},
	{ "L3MON4D3/LuaSnip" },
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-fzf-native.nvim",
		},
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
		end,
	},
	{ "sbdchd/neoformat" },
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "c", "cpp", "python", "lua" },
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
				context_commentstring = { enable = true },
			})
		end,
	},
	{
		"kdheepak/tabline.nvim",
		config = function()
			require("tabline").setup({
				-- Defaults configuration options
				enable = true,
				options = {
					-- If lualine is installed tabline will use separators configured in lualine by default.
					-- These options can be used to override those settings.
					show_tabs_always = false, -- this shows tabs only when there are more than one tab or if the first tab is named
					show_devicons = true, -- this shows devicons in buffer section
					show_bufnr = true, -- this appends [bufnr] to buffer section,
					show_filename_only = false, -- shows base filename only instead of relative path in filename
					modified_icon = " ", -- change the default modified icon
					modified_italic = false, -- set to true by default; this determines whether the filename turns italic if modified
					show_tabs_only = false, -- this shows only tabs instead of tabs + buffers
				},
			})
			vim.cmd([[
                set guioptions-=e
                set sessionoptions+=tabpages,globals
            ]])
		end,
	},
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
	{ "Pocco81/auto-save.nvim" },
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = { direction = "vertical", size = vim.o.columns * 0.3 },
	},
	{ "wakatime/vim-wakatime" },
	{
		"NMAC427/guess-indent.nvim",
		config = function()
			require("guess-indent").setup()
		end,
	},
	{ "willothy/flatten.nvim", opts = { window = { open = "alternate" } } },
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		---@type Flash.Config
		opts = {},
		keys = {
			{
				"s",
				mode = { "n", "x", "o" },
				function()
					require("flash").jump()
				end,
				desc = "Flash",
			},
			{
				"S",
				mode = { "n", "o", "x" },
				function()
					require("flash").treesitter()
				end,
				desc = "Flash Treesitter",
			},
			{
				"r",
				mode = "o",
				function()
					require("flash").remote()
				end,
				desc = "Remote Flash",
			},
			{
				"R",
				mode = { "o", "x" },
				function()
					require("flash").treesitter_search()
				end,
				desc = "Flash Treesitter Search",
			},
			{
				"<c-s>",
				mode = { "c" },
				function()
					require("flash").toggle()
				end,
				desc = "Toggle Flash Search",
			},
		},
	},
})
