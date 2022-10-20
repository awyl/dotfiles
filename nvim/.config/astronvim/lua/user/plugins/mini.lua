return {
	event = "VimEnter",
	config = function()
		require("mini.ai").setup()
		require("mini.cursorword").setup()
		require("mini.jump").setup()
		require("mini.jump2d").setup()
		require("mini.surround").setup()
		require("mini.trailspace").setup()
		local disable = {
			-- "ai",
			"align",
			"base16",
			"bufremove",
			"comment",
			"completion",
			-- "cursorword",
			"doc",
			"fuzzy",
			"indentscope",
			-- "jump",
			-- "jump2d",
			"map",
			"misc",
			"pairs",
			"sessions",
			"starter",
			"statusline",
			-- "surround",
			"tabline",
			"test",
			-- "trailspace",
		}
		for _, plugin in ipairs(disable) do
			vim.g["mini" .. plugin .. "_disable"] = true
		end
	end,
}
