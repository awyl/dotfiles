return {
  n = {
    ["<leader>h"] = false,
    ["<leader>uh"] = { "<cmd>nohlsearch<cr>", desc = "Turn off search highlight" },
    -- easy splits
    ["\\"] = { "<cmd>split<cr>", desc = "Horizontal split" },
    ["|"] = { "<cmd>vsplit<cr>", desc = "Vertical split" },
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
    ["∆"] = { ":m .+1<cr>==", desc = "Move line down" },
    ["˚"] = { ":m .-2<cr>==", desc = "Move line up" },
  },
  ["i"] = {
    ["∆"] = { "<Esc>:m .+1<cr>==gi", desc = "Move line down" },
    ["˚"] = { "<Esc>:m .-2<cr>==gi", desc = "Move line up" },
  },
  ["v"] = {
    ["∆"] = { ":m '>+1<cr>gv=gv", desc = "Move line down" },
    ["˚"] = { ":m '<-2<cr>gv=gv", desc = "Move line up" },
  },
  [""] = {
    -- hop
    ["f"] = { ":HopChar1AC<cr>", desc = "Hop foward" },
    ["F"] = { ":HopChar1BC<cr>", desc = "Hop backward" },
    ["t"] = {
      "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false, hint_offset = -1 })<cr>",
      desc = "Hop until",
    },
    ["T"] = {
      "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false, hint_offset = 1 })<cr>",
      desc = "Hop backward until",
    },
  },
}
