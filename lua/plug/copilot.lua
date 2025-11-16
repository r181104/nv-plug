require("CopilotChat").setup({
	model = "gpt-5.1", -- AI model to use
	temperature = 0.1, -- Lower = focused, higher = creative
	auto_insert_mode = true,
	window = {
		layout = "float",
		width = 80, -- Fixed width in columns
		height = 20, -- Fixed height in rows
		border = "rounded", -- 'single', 'double', 'rounded', 'solid'
		title = "🤖 AI Assistant",
		zindex = 100, -- Ensure window stays on top
	},

	headers = {
		user = "👤 You",
		assistant = "🤖 Copilot",
		tool = "🔧 Tool",
	},

	separator = "━━",
	auto_fold = true, -- Automatically folds non-assistant messages
})
vim.keymap.set("n", "<leader>cc", "<cmd>CopilotChatToggle<cr>", { noremap = true, silent = true })

vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "copilot-*",
	callback = function()
		vim.opt_local.relativenumber = false
		vim.opt_local.number = false
		vim.opt_local.conceallevel = 0
	end,
})
vim.keymap.set("i", "<A-p>", 'copilot#Accept("\\<CR>")', {
	expr = true,
	replace_keycodes = false,
	silent = true,
})
vim.g.copilot_no_tab_map = true
