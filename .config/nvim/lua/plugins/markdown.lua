return {
  "tadmccorkle/markdown.nvim",
  ft = "markdown", -- or 'event = "VeryLazy"'
  opts = {
    mappings = {
      inline_surround_toggle = "⁄", -- (string|boolean) toggle inline style
      inline_surround_toggle_line = false, -- (string|boolean) line-wise toggle inline style
      inline_surround_delete = "Û", -- (string|boolean) delete emphasis surrounding cursor
      inline_surround_change = false, -- (string|boolean) change emphasis surrounding cursor
      link_add = false, -- (string|boolean) add link
      link_follow = false, -- (string|boolean) follow link
      go_curr_heading = false, -- (string|boolean) set cursor to current section heading
      go_parent_heading = false, -- (string|boolean) set cursor to parent section heading
      go_next_heading = false, -- (string|boolean) set cursor to next section heading
      go_prev_heading = false, -- (string|boolean) set cursor to previous section heading
    },
    inline_surround = {
      -- For the emphasis, strong, strikethrough, and code fields:
      -- * 'key': used to specify an inline style in toggle, delete, and change operations
      -- * 'txt': text inserted when toggling or changing to the corresponding inline style
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
