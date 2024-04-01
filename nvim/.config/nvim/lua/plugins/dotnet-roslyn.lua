-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- currently the install doesn't work
-- you have to move the folder yourself to the data folder
-- e.g., mv /tmp/nvim.awyl/2/../4.9.0-3.23604.10/content/LanguageServer/linux-x64/ ~/.local/share/nvim/roslyn
return {
  -- CSharp support
  {
    "nvim-treesitter/nvim-treesitter",
    optional = true,
    opts = function(_, opts)
      if opts.ensure_installed ~= "all" then
        opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, { "c_sharp" })
      end
    end,
  },
  {
    "jmederosalvarado/roslyn.nvim",
    cmd = "CSInstallRoslyn",
    ft = "cs",
    opts = function()
      local astrolsp = require "astrolsp"
      return {
        on_attach = astrolsp.on_attach,
        capabilities = astrolsp.config.capabilities,
      }
    end,
  },
}
