require("nightfox").setup({
	options = {
		styles = {
			comments = "italic",
			conditionals = "italic",
			constants = "bold",
			functions = "bold",
			keywords = "italic,bold",
			numbers = "bold",
			operators = "bold",
			strings = "italic",
			types = "bold",
			variables = "bold",
		},
	},
})
vim.cmd("colorscheme carbonfox")
