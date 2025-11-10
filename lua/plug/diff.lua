return {
	"nvim-mini/mini.diff",
	version = false,
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		local diff = require("mini.diff")

		diff.setup({
			source = { "git", "filesystem" },
			-- Customize visuals
			view = {
				style = "sign", -- other: 'number' or 'line'
				signs = {
					add = "▎",
					change = "▎",
					delete = "",
				},
				priority = 7, -- Higher values override other signs (like diagnostics)
			},
			-- Diff behavior
			options = {
				algorithm = "patience", -- more stable diffs
				wrap_goto = true, -- wraps when navigating between hunks
			},
			-- Toggleable overlay to show rich diff
			overlay = {
				delay = 100,
				signs = {
					add = "+ ",
					delete = "- ",
					change = "~ ",
				},
			},
			-- Highlighting overrides (optional, can use Catppuccin or Tokyonight themes)
			hl = {
				sign_add = "MiniDiffSignAdd",
				sign_change = "MiniDiffSignChange",
				sign_delete = "MiniDiffSignDelete",
			},
		})
		-- Keymaps
		local map = function(mode, lhs, rhs, desc)
			vim.keymap.set(mode, lhs, rhs, { desc = desc, silent = true })
		end
		-- Navigation between hunks
		map("n", "]h", diff.goto_next_hunk, "Next diff hunk")
		map("n", "[h", diff.goto_prev_hunk, "Previous diff hunk")
		-- Apply/reset hunks
		map("n", "<leader>da", diff.apply_hunk, "Apply hunk to buffer")
		map("n", "<leader>dr", diff.reset_hunk, "Revert hunk changes")
		-- Overlay toggle
		map("n", "<leader>do", function()
			diff.toggle_overlay(0)
		end, "Toggle detailed diff overlay")
		-- Show diff summary in command line
		map("n", "<leader>ds", function()
			local summary = vim.inspect(diff.get_summary())
			vim.notify(summary, vim.log.levels.INFO, { title = "Diff Summary" })
		end, "Show diff summary")
	end,
}
