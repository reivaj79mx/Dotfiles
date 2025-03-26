return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			{
				"antosha417/nvim-lsp-file-operations",
				connfig = true,
			},
		},
		config = function()
			local lspconfig = require("lspconfig")
			local cmp_lsp = require("cmp_nvim_lsp")

			local capabilities = cmp_lsp.default_capabilities()

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
						workspace = {
							library = {
								[vim.fn.expand("$VIMRUNTIME/lua")] = true,
								[vim.fn.stdpath("config") .. "/lua"] = true,
							},
						},
					},
				},
			})

			lspconfig.gopls.setup({})
			lspconfig.omnisharp.setup({
				cmd = {
					"/home/reivaj79mx/.local/share/nvim/mason/bin/omnisharp",
					"--languageserver",
					"--hostPID",
					tostring(vim.fn.getpid()),
				},
			})
		end,
	},
}
