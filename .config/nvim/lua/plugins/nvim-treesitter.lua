return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "java",
      "go",
      "vimdoc",
      "markdown",
      "markdown_inline",
      "latex",
      "bibtex",
    },
    highlight = {
      enable = true,
    },
  },
}
