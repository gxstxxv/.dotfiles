return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" },
	opts = {
		render_modes = true,
		latex = {
			enabled = true,
		},
		code = {
			width = "block",
			left_pad = 2,
			right_pad = 4,
			style = "normal",
		},
	},
}
