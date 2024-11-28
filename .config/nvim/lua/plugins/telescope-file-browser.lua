return {
  "nvim-telescope/telescope-file-browser.nvim",
  dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  config = function()
    local fb_actions = require("telescope").extensions.file_browser.actions
    require("telescope").setup {
      pickers = {
        find_files = {
          mappings = {
            n = {
              ["l"] = require("telescope.actions").select_default,
            },
          },
        },
      },
      extensions = {
        file_browser = {
          mappings = {
            ["n"] = {
              ["a"] = fb_actions.create,
              ["h"] = fb_actions.goto_parent_dir,
              ["H"] = fb_actions.toggle_hidden,
              ["w"] = fb_actions.change_cwd,
              ["l"] = require("telescope.actions").select_default,
            },
          },
          theme = "ivy",
        },
      },
    }
    require("telescope").load_extension "file_browser"
  end,
}
