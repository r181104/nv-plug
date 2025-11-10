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

-- NOTE: ColorScheme
Plug("folke/tokyonight.nvim")
-- NOTE: Command Line
Plug("folke/noice.nvim")
Plug("MunifTanjim/nui.nvim")
-- NOTE: Notifier
Plug("rcarriga/nvim-notify")
-- NOTE: For File Explorer
Plug("stevearc/oil.nvim")
-- NOTE: For gitsigns
Plug("lewis6991/gitsigns.nvim")
-- NOTE: For Language Server Protocol
Plug("neovim/nvim-lspconfig")
-- NOTE: For snippets
Plug("L3MON4D3/LuaSnip")
Plug("rafamadriz/friendly-snippets")
-- NOTE: For Formatting
Plug("stevearc/conform.nvim")
-- NOTE: For completion
Plug("saghen/blink.cmp")
-- NOTE: Mini Plugins
Plug("nvim-mini/mini.nvim")
-- NOTE: Snacks For just some plugins
Plug("folke/snacks.nvim")
-- NOTE: Explorer
Plug("stevearc/oil.nvim")
-- NOTE: For Keyboard Shortcuts Help
Plug("folke/which-key.nvim")
Plug("windwp/nvim-autopairs")
-- NOTE: TreeSitter
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" })
-- NOTE: Icons
Plug("nvim-tree/nvim-web-devicons")

vim.call("plug#end")

require("plug.git")
require("plug.cmd")
require("plug.oil")
require("plug.base")
require("plug.line")
require("plug.glow")
require("plug.diff")
require("plug.snacks")
require("plug.colors")
require("plug.lsp-cmp")
require("plug.whichkey")
require("plug.autopairs")
require("plug.formatter")
