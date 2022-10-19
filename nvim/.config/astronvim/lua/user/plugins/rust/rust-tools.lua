return {
	after = { "mason-lspconfig.nvim" },
	ft = { "rust" },
	config = function()
		local extension_path = vim.fn.stdpath("data") .. "/mason/packages/codelldb/extension/"
		local codelldb_path = extension_path .. "adapter/codelldb"
		local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"
		require("rust-tools").setup({
			-- get the server settings and built in capabilities/on_attach
			server = astronvim.lsp.server_settings("rust_analyzer"),
			dap = {
				adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
			},
		})
	end,
}
