-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  {
    "echasnovski/mini.cursorword",
    config = function() require("mini.cursorword").setup() end,
  },
  {
    "echasnovski/mini.trailspace",
    config = function() require("mini.trailspace").setup() end,
  },
}
