if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- goto https://dev.azure.com/azure-public/vside/_artifacts/feed/vs-impl
-- download the appropriate LanguageServer for the platform
-- unzip to ~/.local/share/nvim/roslyn
-- wget "https://b15vsblobprodwus2164.vsblob.vsassets.io/b-63b6279ad2f14bc3a21cdb7614e92831/1E5020B537CF395AB33A501192FDBD0BCE4FEAE2458882B7C27AA9D9ECF16E9D00.blob?sv=2019-07-07&sr=b&si=1&sig=6h6BihPk8zgZcKZ8GC2ALiSYyNh6hGtzgPP6Dpvm9%2Fk%3D&spr=https&se=2024-05-14T21%3A33%3A17Z&rscl=x-e2eid-795fbc66-8e1d4150-9914c34f-3abfe541-session-795fbc66-8e1d4150-9914c34f-3abfe541&rscd=attachment%3B%20filename%3D%22Microsoft.CodeAnalysis.LanguageServer.linux-x64.4.11.0-2.24264.2.nupkg%22&P1=1715733228&P2=2&P3=2&P4=CPfx875pvuBNXy1FAzknHTMtMCxauFesbKA0qDYTiKI%3d"

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
    "seblj/roslyn.nvim",
    -- "jmederosalvarado/roslyn.nvim",
    ft = { "cs" },
    opts = function()
      local astrolsp = require "astrolsp"
      return {
        -- capabilities = nil,
        on_attach = astrolsp.on_attach,
        capabilities = astrolsp.config.capabilities,
      }
    end,
  },
}
