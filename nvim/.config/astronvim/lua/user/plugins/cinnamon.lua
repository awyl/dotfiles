return {
  event = { "BufRead", "BufNewFile" },
  config = function()
    require("cinnamon").setup()
  end,
}
