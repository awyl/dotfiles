return {
	-- -- Smooth scrolling
	-- ["declancm/cinnamon.nvim"] = require("user.plugins.cinnamon"),

	-- Rust programming
	["simrat39/rust-tools.nvim"] = require("user.plugins.rust.rust-tools"),
	["Saecki/crates.nvim"] = require("user.plugins.rust.crates"),

	-- LSP
	["hrsh7th/cmp-nvim-lsp-signature-help"] = {
		after = "nvim-cmp",
		config = function()
			astronvim.add_user_cmp_source("nvim_lsp_signature_help")
		end,
	},

	-- Debugging
	["folke/trouble.nvim"] = require("user.plugins.trouble"),
	["mfussenegger/nvim-dap"] = require("user.plugins.dap"),

	-- minis, a set of plugins
	["echasnovski/mini.nvim"] = require("user.plugins.mini"),

	-- tasks
	["stevearc/overseer.nvim"] = require("user.plugins.overseer"),

	-- themes
	["EdenEast/nightfox.nvim"] = require("user.plugins.nightfox"),

	-- beacon, flash cursor after jump
	["rainbowhxch/beacon.nvim"] = require("user.plugins.beacon"),
}
