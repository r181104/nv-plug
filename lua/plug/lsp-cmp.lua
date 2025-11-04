-- ============================================================================
-- LUASNIP SETUP
-- ============================================================================

local ls = require("luasnip")

ls.setup({
	history = true,
	delete_check_events = "TextChanged",
	enable_autosnippets = true,
})

-- Load friendly-snippets
require("luasnip.loaders.from_vscode").lazy_load()

-- Load custom snippets if they exist
require("luasnip.loaders.from_vscode").lazy_load({
	paths = { vim.fn.stdpath("config") .. "/snippets" },
})

-- ============================================================================
-- LUASNIP KEYMAPS
-- ============================================================================

-- Jump forward in snippet
vim.keymap.set({ "i", "s" }, "<C-l>", function()
	if ls.jumpable(1) then
		ls.jump(1)
	end
end, { silent = true })

-- Jump backward in snippet
vim.keymap.set({ "i", "s" }, "<C-h>", function()
	if ls.jumpable(-1) then
		ls.jump(-1)
	end
end, { silent = true })

-- Change choice in choice node
vim.keymap.set({ "i", "s" }, "<C-e>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, { silent = true })

-- ============================================================================
-- BLINK.CMP SETUP
-- ============================================================================

require("blink.cmp").setup({
	snippets = { preset = "luasnip" },
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
		providers = {
			snippets = {
				name = "snippets",
				module = "blink.cmp.sources.snippets",
				enabled = true,
				max_items = 8,
				min_keyword_length = 2,
				score_offset = 95,
			},
		},
	},
	fuzzy = { implementation = "lua" },
	keymap = {
		preset = "default",
		["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
		["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
	},
	signature = { enabled = true },
	appearance = { nerd_font_variant = "mono" },
	completion = {
		documentation = { auto_show = true, auto_show_delay_ms = 200 },
		keyword = { range = "prefix" },
	},
})

-- ============================================================================
-- LSP SETUP
-- ============================================================================

-- Set capabilities globally for ALL LSP servers
vim.lsp.config("*", {
	capabilities = require("blink.cmp").get_lsp_capabilities(),
})

-- Enable your LSP servers
vim.lsp.enable({
	"html",
	"cssls",
	"ts_ls",
	"pylsp",
	"gopls",
	"jdtls",
	"vtsls",
	"lua_ls",
	"clangd",
	"tailwindcss",
	"rust_analyzer",
})
