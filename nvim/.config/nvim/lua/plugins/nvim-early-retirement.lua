-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- https://github.com/chrisgrieser/nvim-early-retirement
-- Auto close inactive buffers

return {
  {
    "chrisgrieser/nvim-early-retirement",
    config = true,
    event = "VeryLazy",
  },
}
