-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  -- TODO: Remove branch v4 on release
  { "AstroNvim/astrocommunity" },
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder

  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.nix" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.proto" },

  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.motion.mini-surround" },

  { import = "astrocommunity.motion.mini-ai" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.test.neotest" },

  { import = "astrocommunity.completion.codeium-vim" },

  -- -- rest client to test api
  -- { import = "astrocommunity.programming-language-support.rest-nvim" },

  -- yank stuff
  { import = "astrocommunity.terminal-integration.vim-tmux-yank" },
  { import = "astrocommunity.register.nvim-neoclip-lua" },

  { import = "astrocommunity.editing-support.stickybuf-nvim" },

  -- dap stuff need this
  { "nvim-neotest/nvim-nio" },
}
