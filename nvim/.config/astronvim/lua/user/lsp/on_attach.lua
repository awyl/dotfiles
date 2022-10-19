return function(client, bufnr)
  if client.name == "rust_analyzer" then
    local rt = require("rust-tools")
    -- Hover actions
    vim.keymap.set("n", "K", rt.hover_actions.hover_actions, { buffer = bufnr })
  end
end

