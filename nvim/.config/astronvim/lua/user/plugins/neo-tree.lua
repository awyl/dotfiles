return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		opts = {
			sources = {
				"filesystem",
			},
			enable_git_status = false,
			git_status_async_options = {
				batch_delay = 500,
			},
		},
	},
}
