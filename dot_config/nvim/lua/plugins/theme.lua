return {
	"catppuccin/nvim",
	config = function()
		require("catppuccin").setup({
			integrations = {
				cmp = true,
				treesitter = true,
			},
		})

		vim.cmd([[colorscheme catppuccin-mocha]])
	end,
}
