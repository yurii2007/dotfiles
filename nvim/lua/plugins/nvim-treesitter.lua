return {
 	"nvim-treesitter/nvim-treesitter",
	branch = 'master',
	lazy = false,
	build = ":TSUpdate",
	opts = {
		-- Automatically install missing parsers when entering buffer
		auto_install = false,
		highlight = {
			enable = true,
		}		
	}
}
