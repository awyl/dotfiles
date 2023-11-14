return {
	-- Add the community repository of plugin specifications
	"AstroNvim/astrocommunity",
	-- example of imporing a plugin, comment out to use it or add your own
	-- available plugins can be found at https://github.com/AstroNvim/astrocommunity

	{ import = "astrocommunity.pack.lua" },
	{ import = "astrocommunity.pack.rust" },
	{ import = "astrocommunity.pack.tailwindcss" },
	{ import = "astrocommunity.pack.markdown" },
	{ import = "astrocommunity.pack.json" },
	{ import = "astrocommunity.pack.nix" },
	{ import = "astrocommunity.pack.typescript" },
	{ import = "astrocommunity.pack.proto" },

	{ import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
	{ import = "astrocommunity.motion.mini-move" },
	{ import = "astrocommunity.motion.mini-surround" },
	-- { import = "astrocommunity.motion.mini-bracketed" },
	{ import = "astrocommunity.motion.mini-ai" },
	{ import = "astrocommunity.motion.leap-nvim" },
	{ import = "astrocommunity.color.tint-nvim" },

	-- Not using the preconfigured because right now I do
	-- not need python and go.
	-- { import = "astrocommunity.test.neotest" },

	-- { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
	{ import = "astrocommunity.diagnostics.trouble-nvim" },
	{ import = "astrocommunity.editing-support.todo-comments-nvim" },

	{ import = "astrocommunity.completion.codeium-vim" },
	{ import = "astrocommunity.git.octo-nvim" },
	{ import = "astrocommunity.programming-language-support.rest-nvim" },

	-- yank stuff
	{ import = "astrocommunity.terminal-integration.vim-tmux-yank" },
	{ import = "astrocommunity.register.nvim-neoclip-lua" },
}
