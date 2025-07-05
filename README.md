
# My Neovim Configuration (Modular Setup with lazy.nvim)

This is my personal Neovim configuration built using Lua and managed with [lazy.nvim](https://github.com/folke/lazy.nvim). It is modular, clean, and portable across machines.

## Folder Structure
```~/.config/nvim/
├── init.lua
├── lua/
│ ├── core/ # Basic settings and keymaps
│ ├── plugins/ # Plugin-specific configurations
│ └── utils/ # Bootstrap and helper scripts
├── lazy/ # Auto-generated plugin manager directory (gitignored)
```
## Features

- Modular structure using Lua
- tokyonight colorscheme (with fallback)
- LSP support via mason.nvim and lspconfig
- Autocompletion with nvim-cmp and LuaSnip
- Syntax highlighting using Treesitter
- File explorer with nvim-tree
- Git integration with gitsigns
- Fuzzy finder using telescope
- Quick file navigation with harpoon
- Autopairs for brackets and quotes

## Installation

1. Back up any existing config:
   ```sh
   mv ~/.config/nvim ~/.config/nvim_backup
2. Clone or copy this repo into your Neovim config path:
```git clone https://github.com/Alexdhami/nvim-config.git ~/.config/nvim```

3. Launch Neovim:
```nvim```
On first launch, lazy.nvim will install itself and all listed plugins automatically.
## Notes
The```lazy/``` directory is generated automatically and should not be committed.

The configuration uses vim.defer_fn to ensure the colorscheme loads only after plugins are available.

Git Ignore Recommendation
Make sure your .gitignore includes:

```# Neovim plugin manager cache
lazy/
plugin/
undodir/
swap//
session/
```

## Author
```
**Alex Dhami**  
GitHub: [Alexdhami](https://github.com/Alexdhami)  
```
