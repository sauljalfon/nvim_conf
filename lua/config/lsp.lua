local lspconfig = require("lspconfig")

-- Python
lspconfig.pylsp.setup({})

-- C/C++
lspconfig.clangd.setup({})

-- Rust via rust-tools
local rt = require("rust-tools")
rt.setup({
  server = {
    on_attach = function(_, bufnr)
      local opts = { buffer = bufnr }
      vim.keymap.set("n", "K", rt.hover_actions.hover_actions, opts)
      vim.keymap.set("n", "<leader>ca", rt.code_action_group.code_action_group, opts)
    end,
  },
})
