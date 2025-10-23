-- Core settings first (safe without plugins)
require("core.auto")
require("core.opts")
require("core.maps")

-- Ensure vim-plug location
local data = vim.fn.stdpath("data")
local autoload = data .. "/site/autoload/plug.vim"
if vim.fn.empty(vim.fn.glob(autoload)) > 0 then
	vim.api.nvim_echo({ { "vim-plug missing: place plug.vim at " .. autoload, "WarningMsg" } }, false, {})
end

-- vim-plug (Lua style)
local Plug = vim.fn["plug#"]
vim.call("plug#begin", data .. "/plugged")

Plug("folke/tokyonight.nvim")
Plug("stevearc/oil.nvim")
Plug("stevearc/conform.nvim")
Plug("lewis6991/gitsigns.nvim")
Plug("saghen/blink.cmp")
Plug("neovim/nvim-lspconfig")
Plug("nvim-mini/mini.nvim")
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" })
Plug("rcarriga/nvim-notify")
Plug("folke/which-key.nvim")
Plug("windwp/nvim-autopairs")

vim.call("plug#end")

-- Plugin configs after Plug ends
require("plug.git")
require("plug.colors")
require("plug.notify")
require("plug.lsp-cmp")
require("plug.whichkey")
require("plug.autopairs")
require("plug.formatter")
require("plug.treesitter")
require("plug.fileexplorer")
require("plug.mini.main")
require("plug.mini.pick")
require("plug.mini.diff")
require("plug.mini.statusline")
require("plug.mini.highpatterns")
