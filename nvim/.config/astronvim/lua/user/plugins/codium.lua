-- Run :Codeium Auth to set up the plugin and start using Codeium.

return {
	{
		"Exafunction/codeium.vim",
		event = "InsertEnter",
		keys = {
			-- stylua: ignore
			{ "<M-tab>", mode = "i", function() return vim.fn['codeium#Accept']() end, expr = true, desc = "Codeium accept" },
		},
	},
}
