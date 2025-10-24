local Snacks = require("snacks")

Snacks.setup({
	animate = {
		enabled = true,
		duration = 2,
		fps = 60,
		easing = "linear",
	},
	bigfile = {
		enabled = true,
		notify = true,
		size = 2 * 1024 * 1024,
		setup = function(ctx)
			vim.cmd([[NoMatchParen]])
			vim.schedule(function()
				vim.bo[ctx.buf].syntax = ctx.ft
			end)
		end,
	},
	picker = {
		enabled = true,
		layout = "left",
	},
	bufdelete = {
		enabled = true,
	},
	dashboard = {
		enabled = false,
	},
	dim = {
		enabled = true,
	},
	git = {
		enabled = true,
	},
	indent = {
		enabled = true,
		animate = {
			enabled = true,
			duration = {
				step = 20,
				total = 500,
			},
		},
		indent = {
			char = "│",
			blank = " ",
			priority = 1,
		},
		scope = {
			enabled = true,
			char = "│",
			underline = false,
			priority = 200,
		},
	},
	input = {
		enabled = true,
		icon = "❯ ",
		icon_hl = "SnacksInputIcon",
		icon_pos = "left",
	},
	layout = {
		enabled = true,
	},
	lazygit = {
		enabled = true,
		configure = true,
	},
	notifier = {
		enabled = true,
		timeout = 3000,
		width = { min = 40, max = 0.4 },
		height = { min = 1, max = 0.6 },
		margin = { top = 0, right = 1, bottom = 0 },
		padding = true,
		sort = { "level", "added" },
		level = vim.log.levels.TRACE,
		icons = {
			error = "",
			warn = "",
			info = "󰋼",
			debug = "",
			trace = "󰴽",
		},
		style = "compact",
	},
	notify = {
		enabled = true,
	},
	profiler = {
		enabled = true,
	},
	quickfile = {
		enabled = true,
	},
	rename = {
		enabled = true,
	},
	scope = {
		enabled = true,
		min_size = 2,
		max_size = nil,
		edge = true,
		cursor = true,
		treesitter = {
			enabled = true,
			blocks = {
				"function_declaration",
				"function_definition",
				"method_declaration",
				"method_definition",
				"class_declaration",
				"class_definition",
				"do_statement",
				"while_statement",
				"repeat_statement",
				"if_statement",
				"for_statement",
			},
		},
	},
	scratch = {
		enabled = true,
		name = "Scratch",
		ft = function()
			if vim.bo.buftype == "" and vim.bo.filetype == "" then
				return "markdown"
			end
			return vim.bo.filetype
		end,
		icon = nil,
		root = vim.fn.stdpath("data") .. "/scratch",
		autowrite = true,
		filekey = {
			cwd = true,
			branch = true,
			count = true,
		},
		win_by_ft = {
			lua = {
				keys = {
					["source"] = {
						"<cr>",
						function(self)
							vim.cmd("source " .. self.file)
						end,
						desc = "Source buffer",
						mode = { "n", "x" },
					},
				},
			},
		},
	},
	scroll = {
		enabled = true,
		animate = {
			duration = { step = 10, total = 150 },
			easing = "linear",
		},
		spamming = 10,
		filter = function(buf)
			return vim.b[buf].scroll ~= false and vim.bo[buf].buftype ~= "terminal"
		end,
	},
	statuscolumn = {
		enabled = true,
		left = { "mark", "sign" },
		right = { "fold", "git" },
		folds = {
			open = true,
			git_hl = false,
		},
		git = {
			patterns = { "GitSign", "MiniDiffSign", "Gitsigns" },
		},
		refresh = 50,
	},
	terminal = {
		enabled = true,
		win = { style = "terminal" },
	},
	toggle = {
		enabled = true,
		which_key = true,
		notify = true,
		icon = {
			enabled = " ⌨️",
			disabled = " 󰌐 ",
		},
		icon_enabled = " ⌨️",
	},
	util = {
		enabled = true,
	},
	win = {
		enabled = true,
		backdrop = 0,
		position = "float",
		border = "none",
		height = 0.8,
		width = 0.8,
		zindex = 50,
		wo = {
			winhighlight = "NormalFloat:Normal",
			winblend = 0,
		},
	},
	words = {
		enabled = true,
		debounce = 100,
		notify_jump = false,
		notify_end = true,
		foldopen = true,
		jumplist = true,
		modes = { "n" },
	},
	zen = {
		enabled = true,
		toggles = {
			dim = true,
			git_signs = true,
			mini_diff_signs = true,
			diagnostics = true,
			inlay_hints = true,
		},
		show = {
			statusline = true,
			tabline = true,
		},
		win = {
			width = 120,
			backdrop = 0,
		},
		zoom = {
			toggles = {},
			show = {
				statusline = true,
				tabline = true,
			},
			win = {
				backdrop = 0,
			},
		},
	},
	styles = {
		notification = {
			wo = { wrap = true, winblend = 0 },
			bo = { filetype = "markdown" },
		},
		scratch = {
			width = 100,
			height = 30,
			bo = { buftype = "", buflisted = false, bufhidden = "hide", swapfile = false },
			minimal = false,
			noautocmd = false,
			zindex = 20,
			wo = { winhighlight = "NormalFloat:Normal", winblend = 0 },
			border = "none",
			title_pos = "center",
			footer_pos = "center",
		},
		terminal = {
			width = 0.8,
			height = 0.8,
			border = "none",
			zindex = 100,
			bo = {
				filetype = "snacks_terminal",
			},
			wo = {},
			keys = {
				q = "hide",
				gf = function(self)
					local f = vim.fn.findfile(vim.fn.expand("<cfile>"), "**")
					if f ~= "" then
						self:close()
						vim.cmd("e " .. f)
					end
				end,
				term_normal = {
					"<esc>",
					function(self)
						self.esc_timer = self.esc_timer or (vim.uv or vim.loop).new_timer()
						if self.esc_timer:is_active() then
							self.esc_timer:stop()
							vim.cmd("stopinsert")
						else
							self.esc_timer:start(200, 0, function() end)
							return "<esc>"
						end
					end,
					mode = "t",
					expr = true,
					desc = "Double escape to normal mode",
				},
			},
		},
	},
})

local map = vim.keymap.set

map("n", "<leader><space>", function()
	Snacks.picker.smart()
end, { desc = "Smart Find Files" })
map("n", "<leader>,", function()
	Snacks.picker.buffers()
end, { desc = "Buffers" })
map("n", "<leader>/", function()
	Snacks.picker.grep()
end, { desc = "Grep" })
map("n", "<leader>:", function()
	Snacks.picker.command_history()
end, { desc = "Command History" })
map("n", "<leader>e", function()
	Snacks.explorer({ cwd = vim.fn.getcwd() })
end, { desc = "File Explorer" })

map("n", "<leader>fb", function()
	Snacks.picker.buffers()
end, { desc = "Buffers" })
map("n", "<leader>fc", function()
	Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
end, { desc = "Find Config File" })
map("n", "<leader>ff", function()
	Snacks.picker.files()
end, { desc = "Find Files" })
map("n", "<leader>fg", function()
	Snacks.picker.git_files()
end, { desc = "Find Git Files" })
map("n", "<leader>fr", function()
	Snacks.picker.recent()
end, { desc = "Recent Files" })

map("n", "<leader>gb", function()
	Snacks.picker.git_branches()
end, { desc = "Git Branches" })
map("n", "<leader>gl", function()
	Snacks.picker.git_log()
end, { desc = "Git Log" })
map("n", "<leader>gL", function()
	Snacks.picker.git_log_line()
end, { desc = "Git Log Line" })
map("n", "<leader>gs", function()
	Snacks.picker.git_status()
end, { desc = "Git Status" })
map("n", "<leader>gS", function()
	Snacks.picker.git_stash()
end, { desc = "Git Stash" })
map("n", "<leader>gd", function()
	Snacks.picker.git_diff()
end, { desc = "Git Diff" })
map("n", "<leader>gf", function()
	Snacks.picker.git_log_file()
end, { desc = "Git Log File" })
map({ "n", "v" }, "<leader>gB", function()
	Snacks.gitbrowse()
end, { desc = "Git Browse" })
map("n", "<leader>gg", function()
	Snacks.lazygit()
end, { desc = "Lazygit" })

map("n", "<leader>sb", function()
	Snacks.picker.lines()
end, { desc = "Buffer Lines" })
map("n", "<leader>sB", function()
	Snacks.picker.grep_buffers()
end, { desc = "Grep Open Buffers" })
map("n", "<leader>sg", function()
	Snacks.picker.grep()
end, { desc = "Grep" })
map({ "n", "x" }, "<leader>sw", function()
	Snacks.picker.grep_word()
end, { desc = "Search Word" })
map("n", '<leader>s"', function()
	Snacks.picker.registers()
end, { desc = "Registers" })
map("n", "<leader>sa", function()
	Snacks.picker.autocmds()
end, { desc = "Autocmds" })
map("n", "<leader>sc", function()
	Snacks.picker.command_history()
end, { desc = "Command History" })
map("n", "<leader>sC", function()
	Snacks.picker.commands()
end, { desc = "Commands" })
map("n", "<leader>sd", function()
	Snacks.picker.diagnostics()
end, { desc = "Diagnostics" })
map("n", "<leader>sD", function()
	Snacks.picker.diagnostics_buffer()
end, { desc = "Buffer Diagnostics" })
map("n", "<leader>sh", function()
	Snacks.picker.help()
end, { desc = "Help Pages" })
map("n", "<leader>sH", function()
	Snacks.picker.highlights()
end, { desc = "Highlights" })
map("n", "<leader>si", function()
	Snacks.picker.icons()
end, { desc = "Icons" })
map("n", "<leader>sj", function()
	Snacks.picker.jumps()
end, { desc = "Jumps" })
map("n", "<leader>sk", function()
	Snacks.picker.keymaps()
end, { desc = "Keymaps" })
map("n", "<leader>sl", function()
	Snacks.picker.loclist()
end, { desc = "Location List" })
map("n", "<leader>sm", function()
	Snacks.picker.marks()
end, { desc = "Marks" })
map("n", "<leader>sM", function()
	Snacks.picker.man()
end, { desc = "Man Pages" })
map("n", "<leader>sq", function()
	Snacks.picker.qflist()
end, { desc = "Quickfix List" })
map("n", "<leader>sR", function()
	Snacks.picker.resume()
end, { desc = "Resume Picker" })
map("n", "<leader>su", function()
	Snacks.picker.undo()
end, { desc = "Undo History" })
map("n", "<leader>uC", function()
	Snacks.picker.colorschemes()
end, { desc = "Colorschemes" })

map("n", "gd", function()
	Snacks.picker.lsp_definitions()
end, { desc = "Goto Definition" })
map("n", "gD", function()
	Snacks.picker.lsp_declarations()
end, { desc = "Goto Declaration" })
map("n", "gr", function()
	Snacks.picker.lsp_references()
end, { desc = "LSP References" })
map("n", "gI", function()
	Snacks.picker.lsp_implementations()
end, { desc = "Goto Implementation" })
map("n", "gy", function()
	Snacks.picker.lsp_type_definitions()
end, { desc = "Goto Type Definition" })
map("n", "<leader>ss", function()
	Snacks.picker.lsp_symbols()
end, { desc = "LSP Symbols" })
map("n", "<leader>sS", function()
	Snacks.picker.lsp_workspace_symbols()
end, { desc = "LSP Workspace Symbols" })

map("n", "<leader>z", function()
	Snacks.zen()
end, { desc = "Toggle Zen Mode" })
map("n", "<leader>Z", function()
	Snacks.zen.zoom()
end, { desc = "Toggle Zoom" })
map("n", "<leader>.", function()
	Snacks.scratch()
end, { desc = "Toggle Scratch Buffer" })
map("n", "<leader>S", function()
	Snacks.scratch.select()
end, { desc = "Select Scratch Buffer" })
map("n", "<leader>n", function()
	Snacks.notifier.show_history()
end, { desc = "Notification History" })
map("n", "<leader>un", function()
	Snacks.notifier.hide()
end, { desc = "Dismiss Notifications" })
map("n", "<leader>bd", function()
	Snacks.bufdelete()
end, { desc = "Delete Buffer" })
map("n", "<leader>cR", function()
	Snacks.rename.rename_file()
end, { desc = "Rename File" })
map("n", "<leader>up", function()
	Snacks.profiler.toggle()
end, { desc = "Toggle Profiler" })
map({ "n", "t" }, "<C-/>", function()
	Snacks.terminal()
end, { desc = "Toggle Terminal" })
map({ "n", "t" }, "]]", function()
	Snacks.words.jump(vim.v.count1)
end, { desc = "Next Reference" })
map({ "n", "t" }, "[[", function()
	Snacks.words.jump(-vim.v.count1)
end, { desc = "Prev Reference" })
