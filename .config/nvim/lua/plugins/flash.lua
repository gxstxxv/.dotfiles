return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {
    search = {
      mode = "search",
    },
    jump = {
      autojump = false,
    },
    label = {
      uppercase = false,
    },
    modes = {
      char = {
        enabled = true,
        jump_labels = true,
        keys = {},
      },
    },
  },
  keys = {
    { "f", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "F", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
  },
}
