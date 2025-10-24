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
-- NOTE: Snacks
Plug("folke/snacks.nvim")
Plug("nvim-mini/mini.icons")
-- NOTE: File Exploring
Plug("stevearc/oil.nvim")
-- NOTE: For Formatting
Plug("stevearc/conform.nvim")
-- NOTE: For gitsigns
Plug("lewis6991/gitsigns.nvim")
-- NOTE: For completion
Plug("saghen/blink.cmp")
-- NOTE: For Language Server Protocol
Plug("neovim/nvim-lspconfig")
-- NOTE: This provides many Plugins
Plug("nvim-mini/mini.nvim")
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" })
-- NOTE: For Keyboard Shortcuts Help
Plug("folke/which-key.nvim")
Plug("windwp/nvim-autopairs")
-- NOTE: Command Line
Plug("folke/noice.nvim")
Plug("MunifTanjim/nui.nvim")
-- NOTE: Notifier
Plug("rcarriga/nvim-notify")

vim.call("plug#end")

require("plug.git")
require("plug.cmd")
require("plug.snacks")
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
