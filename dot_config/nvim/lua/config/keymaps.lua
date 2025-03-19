-- oil
vim.keymap.set("n", "-", "<cmd>Oil --float<cr>", { desc = "Open Oil" })

-- lsp
vim.api.nvim_create_autocmd("LspAttach", {
	desc = "Lsp keymap actions",
	callback = function()
		local bufmap = function(mode, lhs, rhs)
			local opts = { buffer = true }
			vim.keymap.set(mode, lhs, rhs, opts)
		end
		-- Hover information
		bufmap("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>")

		-- Go to definition
		bufmap("n", "gd", "<cmd>lua require('fzf-lua').lsp_definitions()<cr>")

		-- Go to declaration
		bufmap("n", "gD", "<cmd>lua require('fzf-lua').lsp_declarations()<cr>")

		-- Go to implementation
		bufmap("n", "gi", "<cmd>lua require('fzf-lua').lsp_implementations()<cr>")

		-- Go to definition symbol
		bufmap("n", "go", "<cmd>lua require('fzf-lua').lsp_typedefs()<cr>")

		-- List all references
		bufmap("n", "gr", "<cmd>lua require('fzf-lua').lsp_references()<cr>")

		-- Display signature
		bufmap("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>")

		-- Rename
		bufmap("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>")

		-- Code actions
		bufmap("n", "<F4>", "<cmd>lua require('fzf-lua').lsp_code_actions()<cr>")

		-- Show diagnostics
		bufmap("n", "sd", "<cmd>lua require('fzf-lua').lsp_document_diagnostics()<cr>")

		-- Go next diagnostic
		bufmap("n", "nd", "<cmd>lua vim.diagnostic.goto_next()<cr>")

		-- Go previous diagnostic
		bufmap("n", "pd", "<cmd>lua vim.diagnostic.goto_prev()<cr>")
	end,
})

-- Conform
vim.keymap.set({ "n", "v" }, "<leader>f", function()
	require("conform").format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 500,
	})
end, { desc = "Format document" })
