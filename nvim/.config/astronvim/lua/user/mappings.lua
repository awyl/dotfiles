local maps = { i = {}, n = {}, v = {}, t = {}, [""] = {} }

-- move turn off highlight to <leader>uh
maps.n["h"] = false
maps.n["<leader>uh"] = { ":nohlsearch<CR>", desc = "Turn off search highlight" }

maps.n["<leader>pR"] = { ":AstroReload<CR>:PackerCompile<CR>", desc = "Reload" }

-- override telescope to follow symlinks when finding files
maps.n["<leader>ff"] = {
	function()
		require("telescope.builtin").find_files({ follow = true })
	end,
	desc = "Search files",
}
maps.n["<leader>fF"] = {
	function()
		require("telescope.builtin").find_files({ follow = true, hidden = true, no_ignore = true })
	end,
	desc = "Search all files",
}

-- easy splits
-- Added by Astronvim, will remove these next time
-- maps.n["\\"] = { ":split<CR>", desc = "Horizontal split" }
-- maps.n["|"] = { ":vsplit<CR>", desc = "Vertical split" }

-- resize with arrows instead of ctrl arrows because Mac intercepted this binding
-- for switching workspace
maps.n["<Up>"] = {
	function()
		require("smart-splits").resize_up(2)
	end,
	desc = "Resize split up",
}
maps.n["<Down>"] = {
	function()
		require("smart-splits").resize_down(2)
	end,
	desc = "Resize split down",
}
maps.n["<Left>"] = {
	function()
		require("smart-splits").resize_left(2)
	end,
	desc = "Resize split left",
}
maps.n["<Right>"] = {
	function()
		require("smart-splits").resize_right(2)
	end,
	desc = "Resize split right",
}

-- move line(s) easier
maps.n["<A-j>"] = { ":m .+1<CR>", desc = "Move line down" }
maps.n["<A-k>"] = { ":m .-2<CR>", desc = "Move line up" }
maps.i["<A-j>"] = { "<Esc>:m .+1<CR>gi", desc = "Move line down" }
maps.i["<A-k>"] = { "<Esc>:m .-2<CR>gi", desc = "Move line up" }
maps.v["<A-j>"] = { ":m '>+1<CR>gv`<my`>mzgv`yo`z", desc = "Move lines down" }
maps.v["<A-k>"] = { ":m '<-2<CR>gv`>my`<mzgv`yo`z", desc = "Move lines up" }

-- -- use gitui instead of lazygit
-- maps.n["<leader>gg"] = {
-- 	function()
-- 		astronvim.toggle_term_cmd("gitui")
-- 	end,
-- 	desc = "ToggleTerm gitui",
-- }
-- maps.n["<leader>tl"] = {
-- 	function()
-- 		astronvim.toggle_term_cmd("gitui")
-- 	end,
-- 	desc = "ToggleTerm gitui",
-- }

-- buffers
maps.n["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" }
maps.n["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" }
maps.n["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" }
maps.n["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" }

-- Overseer
maps.n["<leader>TT"] = { ":silent OverseerToggle right<CR>", desc = "Overseer Toggle" }
maps.n["<leader>TR"] = { ":silent OverseerRun<CR>", desc = "Overseer Run" }
maps.n["<leader>Ta"] = { ":silent OverseerQuickAction<CR>", desc = "Overseer Quick Action" }
return maps
