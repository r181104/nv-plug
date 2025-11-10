require("bigfile").setup({
	filesize = 1, -- size of the file in MiB, the plugin round file sizes to the closest MiB
	pattern = { "*" },
	features = {
		"indent_blankline",
		"illuminate",
		"lsp",
		"treesitter",
		"syntax",
		"matchparen",
		"vimopts",
		"filetype",
	},
})
