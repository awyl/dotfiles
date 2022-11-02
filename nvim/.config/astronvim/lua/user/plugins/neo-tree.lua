return {
	sources = {
		"filesystem",
	},
	git_status_async_options = {
		batch_delay = 500,
	},
	filesystem = {
		filtered_items = {
			-- all "hide" just mean "dimmed out"
			visible = false,
			hide_dotfiles = false,
			hide_gitignored = true,
			never_show = {
				".git",
			},
		},
	},
}
