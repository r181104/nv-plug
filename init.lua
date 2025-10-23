-- Core settings first
require("core.auto")
require("core.opts")
require("core.maps")

-- Prefer config/autoload, fall back to data/site/autoload
local cfg = vim.fn.stdpath("config") .. "/autoload/plug.vim"
local data = vim.fn.stdpath("data") .. "/site/autoload/plug.vim"
if vim.fn.empty(vim.fn.glob(cfg)) > 0 and vim.fn.empty(vim.fn.glob(data)) > 0 then
	vim.api.nvim_echo({ { "vim-plug missing: place plug.vim at " .. cfg .. " or " .. data, "WarningMsg" } }, false, {})
end
vim.opt.rtp:prepend(vim.fn.stdpath("config"))

-- vim-plug (Lua)
local Plug = vim.fn["plug#"]
vim.call("plug#begin", vim.fn.stdpath("data") .. "/plugged")

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
