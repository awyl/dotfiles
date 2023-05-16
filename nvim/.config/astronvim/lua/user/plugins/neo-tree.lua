return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		opts = {
			sources = {
				"filesystem",
			},
			git_status_async_options = {
				batch_delay = 500,
			},
		},
	},
}
