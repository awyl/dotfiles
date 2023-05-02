-- https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/server_configurations/omnisharp.lua
return {
	enable_roslyn_analyzers = true,
	organize_imports_on_format = true,

	-- Bug: Neovim E5248 Invalid character in group name
	-- Issue: https://github.com/AstroNvim/AstroNvim/issues/1847
	-- Tempfix: https://github.com/OmniSharp/omnisharp-roslyn/issues/2483
	on_attach = function(client, bufnr)
		-- https://github.com/OmniSharp/omnisharp-roslyn/issues/2483#issuecomment-1492605642
		local tokenModifiers = client.server_capabilities.semanticTokensProvider.legend.tokenModifiers
		for i, v in ipairs(tokenModifiers) do
			local tmp = string.gsub(v, " ", "_")
			tokenModifiers[i] = string.gsub(tmp, "-_", "")
		end
		local tokenTypes = client.server_capabilities.semanticTokensProvider.legend.tokenTypes
		for i, v in ipairs(tokenTypes) do
			local tmp = string.gsub(v, " ", "_")
			tokenTypes[i] = string.gsub(tmp, "-_", "")
		end
		require("astronvim.utils.lsp").on_attach(client, bufnr)
	end,
}
