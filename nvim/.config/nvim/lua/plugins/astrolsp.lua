-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroLSP allows you to customize the features in AstroNvim's LSP configuration engine
-- Configuration documentation can be found with `:h astrolsp`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    ---@diagnostic disable: missing-fields
    config = {
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            procMacro = {
              enable = true,
            },
            cargo = {
              buildScripts = {
                enable = true,
                rebuildOnSave = true,
              },
              loadOutDirsFromCheck = {
                enable = true,
              },
            },
          },
        },
      },
      omnisharp = {
        enable_roslyn_analyzers = true,
        organize_imports_on_format = true,
      },
    },
  },
}
