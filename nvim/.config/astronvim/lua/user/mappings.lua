return {
	n = {
		["<leader>h"] = false,
		["<leader>uh"] = { ":nohlsearch<CR>", desc = "Turn off search highlight" },
		-- easy splits
		["\\"] = { ":split<CR>", desc = "Horizontal split" },
		["|"] = { ":vsplit<CR>", desc = "Vertical split" },
		-- resize with arrows
		["<Up>"] = {
			function()
				require("smart-splits").resize_up(2)
			end,
			desc = "Resize split up",
		},
		["<Down>"] = {
			function()
				require("smart-splits").resize_down(2)
			end,
			desc = "Resize split down",
		},
		["<Left>"] = {
			function()
				require("smart-splits").resize_left(2)
			end,
			desc = "Resize split left",
		},
		["<Right>"] = {
			function()
				require("smart-splits").resize_right(2)
			end,
			desc = "Resize split right",
		},
		-- move lines easier (mac)
		["˚"] = { ":m .-2<CR>", desc = "Move line up" },
		["∆"] = { ":m .+1<CR>", desc = "Move line down" },
	},
	["i"] = {
		["∆"] = { "<Esc>:m .+1<CR>gi", desc = "Move line down" },
		["˚"] = { "<Esc>:m .-2<CR>gi", desc = "Move line up" },
	},
	["v"] = {
		["∆"] = { ":m '>+1<CR>gv`<my`>mzgv`yo`z", desc = "Move lines down" },
		["˚"] = { ":m '<-2<CR>gv`>my`<mzgv`yo`z", desc = "Move lines up" },
	},
}
