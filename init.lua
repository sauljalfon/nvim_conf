-- Neovim Basics UI 
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"

-- Plugin Manager: Lazy Vim
local lazypath = vim.fn.stdpath("config") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.rs", "*.py", "*.c", "*.h" },
  callback = function()
    vim.lsp.buf.format()
  end,
})

-- LSP setup
require("config.lsp")

-- Autocomplete
local cmp = require("cmp")
cmp.setup({
  mapping = {
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = {
    { name = "nvim_lsp" },
  },
})

-- Treesitter
require("nvim-treesitter.configs").setup({
  ensure_installed = { "rust", "python", "c" },
  highlight = { enable = true },
})

-- Status line
require("lualine").setup()
