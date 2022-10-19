local telescope = require("telescope")
local actions = require("telescope.actions")
local hop = telescope.extensions.hop
return {
	defaults = {
		mappings = {
			i = {
				["<C-h>"] = hop.hop,
				["<C-space>"] = function(prompt_bufnr)
					hop._hop_loop(
						prompt_bufnr,
						{ callback = actions.toggle_selection, loop_callback = actions.send_selected_to_qflist }
					)
				end,
			},
		},
	},
}
