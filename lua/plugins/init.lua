return {
  -- LSP core + Rust tools
  { "neovim/nvim-lspconfig" },
  { "simrat39/rust-tools.nvim" },

  -- Completion
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },

  -- Syntax
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- File finder
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

  -- Statusline
  { "nvim-lualine/lualine.nvim" },
}
