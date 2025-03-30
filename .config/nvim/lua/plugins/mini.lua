return {
  "echasnovski/mini.nvim",
  config = function()
    require("mini.surround").setup {
      mappings = {
        add = "<leader>sa",
        delete = "<leader>sd",
        find = "",
        find_left = "",
        highlight = "",
        replace = "<leader>sr",
        update_n_lines = "",

        suffix_last = "",
        suffix_next = "",
      },
    }
  end,
}
