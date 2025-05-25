---@type LazySpec
return {
  {
    "folke/snacks.nvim",
    opts = {
      image = {
        enabled = true,
      },
      dashboard = {
        preset = {
          header = table.concat({
            "",
            "████████████████████████████████",
            "   ██                      ██   ",
            "   ██                      ██   ",
            "   ██                      ██   ",
            "   ██                      ██   ",
          }, "\n"),
        },
      },
    },
  },
}
