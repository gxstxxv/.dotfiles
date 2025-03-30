return {
  "tadmccorkle/markdown.nvim",
  ft = "markdown",
  opts = {
    mappings = {
      inline_surround_toggle = "⁄",
      inline_surround_toggle_line = false,
      inline_surround_delete = "Û",
      inline_surround_change = false,
      link_add = false,
      link_follow = false,
      go_curr_heading = false,
      go_parent_heading = false,
      go_next_heading = false,
      go_prev_heading = false,
    },
    inline_surround = {
      emphasis = {
        key = "i",
        txt = "_",
      },
      strong = {
        key = "b",
        txt = "**",
      },
      strikethrough = {
        key = "m",
        txt = "$",
      },
      code = {
        key = "c",
        txt = "`",
      },
    },
  },
}
