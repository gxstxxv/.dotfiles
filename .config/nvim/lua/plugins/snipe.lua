return {
  "leath-dub/snipe.nvim",
  max_path_width = 1,
  keys = {
    { "J", function() require("snipe").open_buffer_menu() end, desc = "Open Snipe buffer menu" },
  },
  opts = {},
}