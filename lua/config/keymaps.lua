
local wk = require("which-key")

wk.add({
  -- 🔍 Telescope group
  { "<leader>f", group = "Find" },
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File" },
  { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
  { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "List Buffers" },
  { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find Help" },

  -- 📁 Nvim Tree
  { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle File Explorer" },

  -- ❌ Trouble diagnostics
  { "<leader>x", group = "Diagnostics (Trouble)" },
  { "<leader>xx", "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble" },
  { "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Diagnostics" },
  { "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics" },
  { "<leader>xr", "<cmd>TroubleToggle lsp_references<cr>", desc = "LSP References" },
  { "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix List" },
  { "<leader>xl", "<cmd>TroubleToggle loclist<cr>", desc = "Location List" },
})


-- LSP
vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Rename Symbol" })
vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
vim.keymap.set("n", "<leader>lf", function() vim.lsp.buf.format { async = true } end, { desc = "Format Document" })

-- Rust Tools
vim.keymap.set("n", "<leader>Ra", function()
  require("rust-tools").code_action_group.code_action_group()
end, { desc = "Rust Code Actions" })

vim.keymap.set("n", "<leader>Rh", function()
  require("rust-tools").hover_actions.hover_actions()
end, { desc = "Rust Hover Actions" })
