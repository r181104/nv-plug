# 🔌 nv-plug: A Modern Neovim Configuration

A sleek and functional Neovim setup powered by Lua, `vim-plug`, and the `mini.nvim` library.

## ✨ Features

-   🎨 **Gorgeous Colors**: Styled with the `rose-pine` theme.
-   📂 **Efficient File Navigation**: Uses `oil.nvim` for fast and intuitive file browsing.
-   🤖 **Smart Autocompletion**: LSP-driven completion with `nvim-lspconfig` and `blink.cmp`.
-   🌳 **Advanced Syntax Highlighting**: Full support for `nvim-treesitter`.
-    GIT Integration: `gitsigns.nvim` to show changes in the sign column.
-   💡 **Key Hinting**: `which-key.nvim` displays available keybindings.
-   🤏 **Minimalist Core**: Leverages the powerful and lightweight `mini.nvim` suite for statusline, diffing, and more.
-   ✍️ **Auto-Formatting**: `conform.nvim` for automatic code formatting.
-   ペア **Auto Pairs**: `nvim-autopairs` for automatic bracket and quote closing.
-   🔔 **Clean Notifications**: `nvim-notify` for stylish notifications.

##  Prerequisites

### 1.  Nerd Font

For icons to render correctly, you need to install a [Nerd Font](https://www.nerdfonts.com/). Recommended fonts:

-   [FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads)
-   [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)

After installation, set your terminal emulator to use the chosen Nerd Font.

### 2. Dependencies

Make sure you have the following installed:

-   `neovim` (v0.9.0+)
-   `git`
-   `ripgrep` (for mini.pick search)
-   `fd` (for mini.pick file finding)

## 🚀 Installation

1.  **Clone the repository:**

    ```bash
    git clone https://github.com/r181104/nv-plug.git ~/.config/nvim
    ```

2.  **Install Plugins:**

    Open Neovim and run the following command to install all the plugins:

    ```
    :PlugInstall
    ```

    You may also need to run `:TSUpdate` to install Treesitter parsers.

## 🔑 Keybindings

The leader key is set to `Space`.

### General

| Keybinding      | Description                               |
| --------------- | ----------------------------------------- |
| `<leader>E`     | Toggle file explorer (`oil.nvim`)         |
| `<leader>e`     | Toggle file explorer in a floating window |
| `<leader>fm`    | Format the current buffer                 |
| `<leader>w`     | Write (save) the current file             |
| `<leader>q`     | Quit Neovim                               |
| `<leader>so`    | Source the current file                   |
| `<C-h/j/k/l>`   | Navigate between window splits            |
| `;`             | Enter command mode (`:`)                  |

### Mini.nvim

| Keybinding      | Description                               |
| --------------- | ----------------------------------------- |
| `<leader>ff`    | Find files                                |
| `<leader>fh`    | Live grep                                 |
| `<leader>fb`    | Find buffers                              |
| `<leader>fp`    | Find help                                 |
| `<leader>fr`    | Recent files                              |
| `<leader>fg`    | Git files                                 |
| `<leader>bd`    | Delete buffer                             |
| `<leader>bD`    | Delete buffer (force)                     |
| `]h`            | Next diff hunk                            |
| `[h`            | Previous diff hunk                        |
| `<leader>da`    | Apply hunk to buffer                      |
| `<leader>dr`    | Revert hunk changes                       |
| `<leader>do`    | Toggle detailed diff overlay              |
| `<leader>ds`    | Show diff summary                         |

### Text Editing

| Keybinding | Description                          |
| ---------- | ------------------------------------ |
| `J` / `K`  | In Visual mode, move selected lines  |
| `<C-d>`    | Scroll down, keeping cursor centered |
| `<C-u>`    | Scroll up, keeping cursor centered   |

---

Enjoy your new Neovim experience! 🌟