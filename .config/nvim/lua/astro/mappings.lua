return {
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        t = {
          ["<Esc>"] = { "<C-\\><C-n>", desc = "Leave Terminal Mode" },
        },
        n = {
          -- redo --
          ["U"] = { "<C-r>" },

          -- mark all --
          ["<C-a>"] = { "ggVG", desc = "Mark All" },

          -- telescope files --
          ["<Leader><Leader>"] = { "<cmd>Telescope find_files<cr>", desc = "Find Files" },

          -- zen --
          ["<Leader>z"] = { "<cmd>ZenMode<cr>", desc = "Toggle Zenmode" },

          -- markdown commands --
          ["<Leader>m"] = { desc = "Markdown" },
          ["<Leader>mp"] = {
            ":! pandoc -H ~/.config/pandoc/header.tex -V geometry:margin=1in -o ",
            desc = "Markdown to Pdf",
          },
          ["<Leader>mt"] = { "i<!-- TODO: --><esc>bhi ", desc = "Add TODO" },
          ["<tab>"] = { "<esc><cmd>BulletDemote<cr>" },
          ["<s-tab>"] = { "<esc><cmd>BulletPromote<cr>" },
          ["<Leader>mc"] = {
            function()
              local line = vim.api.nvim_get_current_line()

              local checkbox_start, checkbox_end = line:find "%[[ xX]%]"

              if checkbox_start and checkbox_end then
                local current_box = line:sub(checkbox_start + 1, checkbox_start + 1)
                local new_char = (current_box == "x" or current_box == "X") and " " or "x"

                local new_line = line:sub(1, checkbox_start) .. new_char .. line:sub(checkbox_end)
                vim.api.nvim_set_current_line(new_line)
              else
                print "No Checkbox found!"
              end
            end,
            desc = "Checkbox Done",
          },
          ["<Leader>ma"] = { "i**Frage**:<cr><cr>**Antwort**:<cr><esc>kkO", desc = "New Anki Question" },

          -- latex commands --
          ["<Leader>L"] = { desc = "LaTeX" },
          ["<Leader>Lc"] = { "<cmd>VimtexCompile<cr>", desc = "Compile" },
          ["<Leader>Lx"] = { "<cmd>VimtexClean<cr>", desc = "Clean" },
          ["<Leader>Lv"] = { "<cmd>VimtexView<cr>", desc = "View" },
          ["<Leader>Lq"] = { "<cmd>copen<cr>", desc = "Quickfix" },

          -- mini.surround --
          ["<Leader>s"] = { desc = "Surround" },

          -- goto-preview --
          ["gpd"] = { "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", desc = "Definition" },
          ["gpt"] = { "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", desc = "Type Definition" },
          ["gpi"] = { "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", desc = "Implementation" },
          ["gpD"] = { "<cmd>lua require('goto-preview').goto_preview_declaration()<CR>", desc = "Declaration" },
          ["gP"] = { "<cmd>lua require('goto-preview').close_all_win()<CR>", desc = "Close All" },
          ["gpr"] = { "<cmd>lua require('goto-preview').goto_preview_references()<CR>", desc = "References" },

          -- floating notes --
          ["<Leader>N"] = { "<cmd>Td<CR>", desc = "Floating Notes" },
        },

        v = {
          -- mini.surround --
          ["<Leader>s"] = { desc = "Surround" },

          -- move visual selected lines --
          ["J"] = { ":m '>+1<CR>gv=gv", desc = "Move Visual Down" },
          ["K"] = { ":m '<-2<CR>gv=gv", desc = "Move Visual Up" },

          -- markdown --
          ["<tab>"] = { "<esc><cmd>BulletDemoteVisual<cr>a" },
          ["<s-tab>"] = { "<esc><cmd>BulletPromoteVisual<cr>a" },
        },
      },
    },
  },
}
