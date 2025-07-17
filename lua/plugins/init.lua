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

  -- Color Scheme
  {
    "folke/tokyonight.nvim", 
    lazy = false,
    priority = 1000,
    config = function()
        vim.opt.termguicolors = true
        vim.cmd("colorscheme tokyonight")
    end,
  },
  -- Tree Files
  {
      "nvim-tree/nvim-tree.lua",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function()
          require("nvim-tree").setup()
      end,
  },

  -- Which Key
  {
      "folke/which-key.nvim",
      event = "VeryLazy",
      config = function()
        require("which-key").setup({})
      end,
  },

  -- TroubleShooting
  {
      "folke/trouble.nvim",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function()
        require("trouble").setup({})
      end,
  },
}
