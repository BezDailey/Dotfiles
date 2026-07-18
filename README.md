# Dotfiles

Welcome to my dotfiles repository, a collection of personal configurations that aim to enhance productivity and streamline the development workflow. In this repository, you'll find my tailored settings for a range of tools, each fine-tuned to create a more efficient and enjoyable coding environment.

## Featured Configurations

### Neovim

A modern Neovim setup written in Lua and managed with [lazy.nvim](https://github.com/folke/lazy.nvim). It's all about efficiency and ease of use, with sensible defaults and a focused plugin set:

- **[lazy.nvim](https://github.com/folke/lazy.nvim)** — fast, declarative plugin manager (bootstraps itself on first launch).
- **LSP + [Mason](https://github.com/williamboman/mason.nvim)** — language server support with `lua_ls`, `ts_ls`, `html`, `cssls`, and `jsonls` installed automatically.
- **[Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** — accurate syntax highlighting and indentation for a wide range of languages.
- **[Telescope](https://github.com/nvim-telescope/telescope.nvim)** — fuzzy finding (`<leader>ff` find files, `<leader>fg` live grep) with the native `fzf` extension.
- **[nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)** — file explorer sidebar (`<leader>n` to toggle).

The leader key is `Space`.

#### Requirements

- Neovim **0.11+**
- `git`, a C compiler, and `make` (for building `telescope-fzf-native`)

#### Install

```sh
git clone https://github.com/BezDailey/Dotfiles.git
cp -R Dotfiles/nvim ~/.config/nvim
```

Launch `nvim` and lazy.nvim will bootstrap itself and install the configured plugins on first run.
