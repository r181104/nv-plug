# [<img src="https://raw.githubusercontent.com/r181104/Wallpapers/refs/heads/master/logo/python.jpg" width="10" height="10">](https://your-link.com) A Modern Neovim Configuration

A sleek and functional Neovim setup powered by Lua, `vim-plug`, and a collection of modern plugins. This configuration is designed to be fast, easy to use, and highly customizable.

## ✨ Features

- **Fast and Lightweight**: Optimized for performance with a minimal set of plugins.
- **Modern UI**: A beautiful and functional UI with a custom statusline, notifications, and command line.
- **Powerful Completion**: Intelligent code completion with LSP support, snippets, and fuzzy matching.
- **Advanced Syntax Highlighting**: Full support for `nvim-treesitter` for more accurate and detailed highlighting.
- **Git Integration**: Seamless Git integration with `gitsigns.nvim` and a variety of helpful commands.
- **Auto-formatting**: Automatic code formatting with `conform.nvim` for a wide range of languages.
- **Extensible**: Easily customize and extend the configuration to fit your workflow.

## 📂 Structure

The configuration is organized into the following directories:

- `lua/core`: Core configuration files for options, keymaps, and autocommands.
- `lua/plug`: Plugin configuration files. Each file corresponds to a specific plugin.
- `init.lua`: The main entry point of the configuration.

## 📦 Plugins

This configuration uses the following plugins:

| Plugin                                                                | Description                                                  |
| --------------------------------------------------------------------- | ------------------------------------------------------------ |
| [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)           | A clean, dark Neovim theme.                                  |
| [noice.nvim](https://github.com/folke/noice.nvim)                     | A modern command-line experience for Neovim.                 |
| [nui.nvim](https://github.com/MunifTanjim/nui.nvim)                   | A UI component library for Neovim.                           |
| [nvim-notify](https://github.com/rcarriga/nvim-notify)                | A notification manager for Neovim.                           |
| [oil.nvim](https://github.com/stevearc/oil.nvim)                      | A file explorer for Neovim.                                  |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)           | Git integration for the sign column.                         |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)            | Configurations for the Neovim LSP client.                    |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip)                        | A snippet engine for Neovim.                                 |
| [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)  | A collection of snippets for various programming languages.  |
| [conform.nvim](https://github.com/stevearc/conform.nvim)              | A formatting plugin for Neovim.                              |
| [blink.cmp](https://github.com/saghen/blink.cmp)                      | A fast and lightweight completion plugin for Neovim.         |
| [mini.ai](https://github.com/nvim-mini/mini.ai)                       | A plugin for extending and creating `a` and `i` textobjects. |
| [mini.statusline](https://github.com/nvim-mini/mini.statusline)       | A minimalist statusline for Neovim.                          |
| [mini.hipatterns](https://github.com/nvim-mini/mini.hipatterns)       | A plugin for highlighting patterns in code.                  |
| [snacks.nvim](https://github.com/folke/snacks.nvim)                   | A collection of UI and workflow enhancements.                |
| [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)              | A library of useful Lua functions for Neovim.                |
| [which-key.nvim](https://github.com/folke/which-key.nvim)             | A keybinding helper for Neovim.                              |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs)            | A plugin for auto-closing pairs.                             |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Advanced syntax highlighting for Neovim.                     |
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)   | Icons for Neovim.                                            |
| [mini.icons](https://github.com/nvim-mini/mini.icons)                 | A collection of icons for Neovim.                            |

## 🚀 Installation

1.  **Clone the repository:**

    ```bash
    git clone -b plug https://github.com/r181104/neovim.git ~/.config/nvim
    ```

2.  **Install Plugins:**

    Open Neovim and run the following command to install all the plugins:

    ```
    :PlugInstall
    ```

    You may also need to run `:TSUpdate` to install Treesitter parsers.

## 🔧 Configuration

You can customize the configuration by editing the files in the `lua` directory.

- **Colorscheme**: To change the colorscheme, edit the `lua/plug/colors.lua` file.
- **Plugins**: To add or remove plugins, edit the `init.lua` file.
- **Keybindings**: To change the keybindings, edit the `lua/core/maps.lua` file.
- **Options**: To change the options, edit the `lua/core/opts.lua` file.

## 🔑 Keybindings

The leader key is set to `Space`.

### General

| Keybinding    | Description                                               |
| ------------- | --------------------------------------------------------- |
| `<leader>cd`  | Open file explorer (`oil.nvim`)                           |
| `<leader>e`   | Toggle file explorer in a floating window (`snacks.nvim`) |
| `<leader>fm`  | Format the current buffer                                 |
| `<leader>w`   | Write (save) the current file                             |
| `<leader>q`   | Quit Neovim                                               |
| `<leader>so`  | Source the current file                                   |
| `<leader>si`  | Source `init.lua`                                         |
| `<leader>rr`  | Restart Neovim                                            |
| `<leader>bc`  | New empty buffer                                          |
| `<leader>bn`  | Next buffer                                               |
| `<leader>bp`  | Previous buffer                                           |
| `<leader>y`   | Yank to system clipboard                                  |
| `<C-h/j/k/l>` | Navigate between window splits                            |
| `;`           | Enter command mode (`:`)                                  |
| `<C-_>`       | Toggle comment                                            |

### Snacks.nvim

| Keybinding        | Description           |
| ----------------- | --------------------- |
| `<leader><space>` | Smart Find Files      |
| `<leader>,`       | Buffers               |
| `<leader>/`       | Grep                  |
| `<leader>:`       | Command History       |
| `<leader>e`       | File Explorer         |
| `<leader>fb`      | Buffers               |
| `<leader>fc`      | Find Config File      |
| `<leader>ff`      | Find Files            |
| `<leader>fg`      | Find Git Files        |
| `<leader>fr`      | Recent Files          |
| `<leader>fp`      | Projects              |
| `<leader>gb`      | Git Branches          |
| `<leader>gl`      | Git Log               |
| `<leader>gL`      | Git Log Line          |
| `<leader>gs`      | Git Status            |
| `<leader>gS`      | Git Stash             |
| `<leader>gd`      | Git Diff              |
| `<leader>gf`      | Git Log File          |
| `<leader>gB`      | Git Browse            |
| `<leader>gg`      | Lazygit               |
| `<leader>sb`      | Buffer Lines          |
| `<leader>sB`      | Grep Open Buffers     |
| `<leader>sg`      | Grep                  |
| `<leader>sw`      | Search Word           |
| `<leader>s"`      | Registers             |
| `<leader>sa`      | Autocmds              |
| `<leader>sc`      | Command History       |
| `<leader>sC`      | Commands              |
| `<leader>sd`      | Diagnostics           |
| `<leader>sD`      | Buffer Diagnostics    |
| `<leader>sh`      | Help Pages            |
| `<leader>sH`      | Highlights            |
| `<leader>si`      | Icons                 |
| `<leader>sj`      | Jumps                 |
| `<leader>sk`      | Keymaps               |
| `<leader>sl`      | Location List         |
| `<leader>sm`      | Marks                 |
| `<leader>sM`      | Man Pages             |
| `<leader>sq`      | Quickfix List         |
| `<leader>sR`      | Resume Picker         |
| `<leader>su`      | Undo History          |
| `<leader>sn`      | Notifications         |
| `<leader>uC`      | Colorschemes          |
| `gd`              | Goto Definition       |
| `gD`              | Goto Declaration      |
| `gr`              | LSP References        |
| `gI`              | Goto Implementation   |
| `gy`              | Goto Type Definition  |
| `<leader>ss`      | LSP Symbols           |
| `<leader>sS`      | LSP Workspace Symbols |
| `<leader>z`       | Toggle Zen Mode       |
| `<leader>Z`       | Toggle Zoom           |
| `<leader>.`       | Toggle Scratch Buffer |
| `<leader>S`       | Select Scratch Buffer |
| `<leader>n`       | Notification History  |
| `<leader>un`      | Dismiss Notifications |
| `<leader>bd`      | Delete Buffer         |
| `<leader>cR`      | Rename File           |

### Text Editing

| Keybinding | Description                                          |
| ---------- | ---------------------------------------------------- |
| `J` / `K`  | In Visual mode, move selected lines                  |
| `J`        | In Normal mode, join lines without moving the cursor |
| `<C-d>`    | Scroll down, keeping cursor centered                 |
| `<C-u>`    | Scroll up, keeping cursor centered                   |
| `n` / `N`  | After searching, recenter the view                   |

## ✅ Dependencies

### Required

- `neovim` (v0.9.0+)
- `git`
- `ripgrep`
- `fd`
- A [Nerd Font](https://www.nerdfonts.com/)
- `lazygit` (optional, for `<leader>gg` mapping)

### Optional (for formatters)

- `stylua` (for Lua)
- `ruff` (for Python)
- `prettierd` (for web development)
- `shfmt` (for shell scripts)
- `fish_indent` (for Fish)
- `alejandra` (for Nix)
- `clang-format` (for C/C++)
- `gofumpt` and `goimports` (for Go)
- `rustfmt` (for Rust)
- `google-java-format` (for Java)
- `sqruff` (for SQL)

### Optional (for LSP)

- `lua_ls`
- `pylsp`
- `clangd`
- `jdtls`
- `rust-analyzer`
- `ts_ls`
- `vtsls`
- `tailwindcss`
- `html`
- `cssls`
- `gopls`
- `postgres_lsp`

---

Enjoy your new Neovim experience! 🌟
