return function(client, bufnr)
	if client.name == "rust_analyzer" then
		local rt = require("rust-tools")
		-- Hover actions
		vim.keymap.set("n", "K", rt.hover_actions.hover_actions, { buffer = bufnr })
	end

	if client.server_capabilities.signatureHelpProvider then
		require("lsp-overloads").setup(client, {})
		vim.api.nvim_set_keymap("n", "<leader>lh", ":LspOverloadsSignature<CR>", { noremap = true, silent = true })
	end
end
