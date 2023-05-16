-- override community default
return {
	"Exafunction/codeium.vim",
	init = function()
		-- disable it by default
		vim.g.codeium_enabled = 0
		-- vim.g.codeium_disable_bindings = 1
		-- vim.g.codeium_idle_delay = 1000
	end,
}
