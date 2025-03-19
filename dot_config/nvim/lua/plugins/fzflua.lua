return {
	"ibhagwan/fzf-lua",
	dependencies = {
		"echasnovski/mini.nvim",
	},
	keys = {
		{
			"<leader>ff",
			function()
				require("fzf-lua").files()
			end,
			desc = "[F]ind [f]iles",
		},
		{
			"<leader>fg",
			function()
				require("fzf-lua").live_grep()
			end,
			desc = "[F]ind [g]rep",
		},
		{
			"<leader>fb",
			function()
				require("fzf-lua").buffers()
			end,
			desc = "[F]ind [b]uffers",
		},
	},
	opts = {
		winopts = {
			border = "rounded",
		},
	},
}
