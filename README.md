# Neovim Configuration for Rust, Python, and C Development (macOS)

My personal Neovim config optimized for:
- Rust, Python, and C development
- LSP (Language Server Protocol)
- Autocompletion
- Syntax Highlighting (Treesitter)
- Fuzzy Finder (Telescope)
- Statusline (Lualine)
- Format-on-save

---

## 📦 Requirements

```
brew install neovim git ripgrep fd
curl https://sh.rustup.rs -sSf | sh
rustup component add rust-analyzer
pip install 'python-lsp-server[all]'
brew install llvm
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
```
