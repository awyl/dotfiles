return {
	filesystem = {
		filtered_items = {
			-- all "hide" just mean "dimmed out"
			visible = true,
			hide_dotfiles = false,
			hide_gitignored = true,
			never_show = {
				".git",
			},
		},
	},
}
