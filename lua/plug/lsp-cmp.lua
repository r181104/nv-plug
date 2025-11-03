-- Snippets
require("mini.snippets").setup({})

-- Blink config
require("blink.cmp").setup({
	snippets = { preset = "mini_snippets" },
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
	},
	fuzzy = { implementation = "lua" }, -- Use rust for better performance
	keymap = { preset = "default" },
	signature = { enabled = true },
	appearance = { nerd_font_variant = "mono" },
	completion = {
		documentation = { auto_show = true, auto_show_delay_ms = 200 },
		keyword = { range = "prefix" },
	},
})

-- Set capabilities globally for ALL LSP servers
vim.lsp.config("*", {
	capabilities = require("blink.cmp").get_lsp_capabilities(),
})

-- Enable your LSP servers
vim.lsp.enable({
	"lua_ls",
	"pylsp",
	"clangd",
	"jdtls",
	"rust_analyzer",
	"vtsls",
	"tailwindcss",
  "html",
  "cssls",
  "ts_ls",
})
