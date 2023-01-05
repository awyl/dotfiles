return {
	after = "nvim-lspconfig",
	config = function()
		require("lsp_signature").setup({})
	end,
}
