return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
  },
  opts = {
    mappings = {},
    ui = { enable = false },
    workspaces = {
      {
        name = "Studium",
        path = "/Users/gg1/Library/Mobile Documents/iCloud~md~obsidian/Documents/Studium",
      },
      {
        name = "Notizen",
        path = "/Users/gg1/Library/Mobile Documents/iCloud~md~obsidian/Documents/Notizen",
      },
    },
  },
}
