# 🔌 A Modern Neovim Configuration

A sleek and functional Neovim setup powered by Lua, `vim-plug`, and a collection of modern plugins.

## ✨ Features

-   🎨 **Stunning Colors**: Featuring the beautiful `tokyonight` colorscheme.
-   📂 **Efficient File Navigation**: `oil.nvim` for fast and intuitive file browsing.
-   🤖 **Smart Autocompletion**: LSP-driven completion with `blink.cmp`, a fast and lightweight completion plugin.
-   🌳 **Advanced Syntax Highlighting**: Full support for `nvim-treesitter`.
-   GIT Integration: `gitsigns.nvim` to show changes in the sign column.
-   💡 **Key Hinting**: `which-key.nvim` displays available keybindings.
-   🤏 **Minimalist Statusline**: `mini.statusline` for a clean and informative statusline.
-   ✍️ **Auto-Formatting**: `conform.nvim` for automatic code formatting.
-   ペア **Auto Pairs**: `nvim-autopairs` for automatic bracket and quote closing.
-   🔔 **Clean Notifications**: `nvim-notify` for stylish notifications.
-   命令行 **Modern Command Line**: `noice.nvim` for a redesigned command-line experience.
-   🚀 **Utilities**: `snacks.nvim` for a variety of UI and workflow enhancements.

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
-   `ripgrep`
-   `fd`
-   `live-server` (optional, for web development)

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

    You may also need to run `:TSUpdate` to install Treesitter parsers. The `tokyonight` colorscheme will be enabled by default.

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
| `<leader>si`    | Source `init.lua`                         |
| `<leader>rr`    | Restart Neovim                            |
| `<leader>bc`    | New empty buffer                          |
| `<leader>bn`    | Next buffer                               |
| `<leader>bp`    | Previous buffer                           |
| `<leader>y`     | Yank to system clipboard                  |
| `<C-h/j/k/l>`   | Navigate between window splits            |
| `;`             | Enter command mode (`:`)                  |

### Snacks.nvim

| Keybinding      | Description                               |
| --------------- | ----------------------------------------- |
| `<leader><space>`| Smart Find Files                          |
| `<leader>,`     | Buffers                                   |
| `<leader>/`     | Grep                                      |
| `<leader>:`     | Command History                           |
| `<leader>e`     | File Explorer                             |
| `<leader>fb`    | Buffers                                   |
| `<leader>fc`    | Find Config File                          |
| `<leader>ff`    | Find Files                                |
| `<leader>fg`    | Find Git Files                            |
| `<leader>fr`    | Recent Files                              |
| `<leader>gb`    | Git Branches                              |
| `<leader>gl`    | Git Log                                   |
| `<leader>gL`    | Git Log Line                              |
| `<leader>gs`    | Git Status                                |
| `<leader>gS`    | Git Stash                                 |
| `<leader>gd`    | Git Diff                                  |
| `<leader>gf`    | Git Log File                              |
| `<leader>gB`    | Git Browse                                |
| `<leader>gg`    | Lazygit                                   |
| `<leader>sb`    | Buffer Lines                              |
| `<leader>sB`    | Grep Open Buffers                         |
| `<leader>sg`    | Grep                                      |
| `<leader>sw`    | Search Word                               |
| `<leader>s"`    | Registers                                 |
| `<leader>sa`    | Autocmds                                  |
| `<leader>sc`    | Command History                           |
| `<leader>sC`    | Commands                                  |
| `<leader>sd`    | Diagnostics                               |
| `<leader>sD`    | Buffer Diagnostics                        |
| `<leader>sh`    | Help Pages                                |
| `<leader>sH`    | Highlights                                |
| `<leader>si`    | Icons                                     |
| `<leader>sj`    | Jumps                                     |
| `<leader>sk`    | Keymaps                                   |
| `<leader>sl`    | Location List                             |
| `<leader>sm`    | Marks                                     |
| `<leader>sM`    | Man Pages                                 |
| `<leader>sq`    | Quickfix List                             |
| `<leader>sR`    | Resume Picker                             |
| `<leader>su`    | Undo History                              |
| `<leader>uC`    | Colorschemes                              |
| `gd`            | Goto Definition                           |
| `gD`            | Goto Declaration                          |
| `gr`            | LSP References                            |
| `gI`            | Goto Implementation                       |
| `gy`            | Goto Type Definition                      |
| `<leader>ss`    | LSP Symbols                               |
| `<leader>sS`    | LSP Workspace Symbols                     |
| `<leader>z`     | Toggle Zen Mode                           |
| `<leader>Z`     | Toggle Zoom                               |
| `<leader>.`     | Toggle Scratch Buffer                     |
| `<leader>S`     | Select Scratch Buffer                     |
| `<leader>n`     | Notification History                      |
| `<leader>un`    | Dismiss Notifications                     |
| `<leader>bd`    | Delete Buffer                             |
| `<leader>cR`    | Rename File                               |
| `<leader>up`    | Toggle Profiler                           |
| `<C-/>`          | Toggle Terminal                           |

### Text Editing

| Keybinding | Description                          |
| ---------- | ------------------------------------ |
| `J` / `K`  | In Visual mode, move selected lines  |
| `<C-d>`    | Scroll down, keeping cursor centered |
| `<C-u>`    | Scroll up, keeping cursor centered   |

---

Enjoy your new Neovim experience! 🌟