-- Options: https://rust-analyzer.github.io/manual.html#configuration
return {
	settings = {
		["rust-analyzer"] = {
			checkOnSave = {
				command = "clippy",
			},
			procMacro = {
				enable = true,
			},
			experimental = {
				procAttrMacros = true,
			},
			cargo = {
				buildScripts = {
					enable = true,
				},
				loadOutDirsFromCheck = {
					enable = true,
				},
			},
		},
	},
}
