return {
  "stevearc/aerial.nvim",
  dependencies = {
    "stevearc/stickybuf.nvim",
    config = function()
      require("stickybuf").setup()
    end,
  },
}
