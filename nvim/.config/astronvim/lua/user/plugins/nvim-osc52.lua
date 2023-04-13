return {
	{
		"ojroques/nvim-osc52",
		keys = {
			{
				-- Not sure why this does not work
				"<leader>y",
				mode = { "n" },
				function()
					require("osc52").copy_operator()
				end,
				expr = true,
				desc = "Yank to OSC52",
			},
			{
				"<leader>y",
				mode = { "x" },
				function()
					require("osc52").copy_visual()
				end,
				desc = "Yank to OSC52",
			},
		},
		config = function()
			require("osc52").setup({
				max_length = 0, -- Maximum length of selection (0 for no limit)
				silent = false, -- Disable message on successful copy
				trim = false, -- Trim text before copy
			})
		end,
	},
}
