local maps = { i = {}, n = {}, v = {}, t = {}, [""] = {} }

-- move turn off highlight to <leader>uh
maps.n["h"] = false
maps.n["<leader>uh"] = { ":nohlsearch<CR>", desc = "Turn off search highlight" }

-- easy splits
maps.n["\\"] = { ":split<CR>", desc = "Horizontal split" }
maps.n["|"] = { ":vsplit<CR>", desc = "Vertical split" }

-- resize with arrows instead of ctrl arrows because Mac intercepted this binding
-- for switching workspace
maps.n["<Up>"] = { function() require("smart-splits").resize_up(2) end, desc = "Resize split up" }
maps.n["<Down>"] = { function() require("smart-splits").resize_down(2) end, desc = "Resize split down", }
maps.n["<Left>"] = { function() require("smart-splits").resize_left(2) end, desc = "Resize split left", }
maps.n["<Right>"] = { function() require("smart-splits").resize_right(2) end, desc = "Resize split right", }

-- move line(s) easier
maps.n["˚"] = { ":m .-2<CR>", desc = "Move line up" }
maps.n["∆"] = { ":m .+1<CR>", desc = "Move line down" }
maps.i["∆"] = { "<Esc>:m .+1<CR>gi", desc = "Move line down" }
maps.i["˚"] = { "<Esc>:m .-2<CR>gi", desc = "Move line up" }
maps.v["∆"] = { ":m '>+1<CR>gv`<my`>mzgv`yo`z", desc = "Move lines down" }
maps.v["˚"] = { ":m '<-2<CR>gv`>my`<mzgv`yo`z", desc = "Move lines up" }

-- use gitui instead of lazygit
maps.n["<leader>gg"] = { function() astronvim.toggle_term_cmd "gitui" end, desc = "ToggleTerm gitui" }
maps.n["<leader>tl"] = { function() astronvim.toggle_term_cmd "gitui" end, desc = "ToggleTerm gitui" }

-- codelens
maps.n["<leader>lL"] = { function() vim.lsp.codelens.refresh() end, desc = "Codelens refresh" }
maps.n["<leader>ll"] = { function() vim.lsp.codelens.run() end, desc = "Codelens run" }

return maps
