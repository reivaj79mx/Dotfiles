return {
	"olimorris/codecompanion.nvim",
	config = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	opts = {
		strategies = {
			chat = {
				adapter = "gemini",
			},
		},
		adapters = {
			gemini = function()
				return require("codecompanion.adapters").extend("gemini", {
					env = {
						api_key = "AIzaSyC4uwKeKhiZFOcJIu77XvGRH7HDud0C76E",
					},
				})
			end,
		},
		display = {
			chat = {
				window = {
					position = "right",
					width = 0.35,
				},
			},
		},
	},
}
