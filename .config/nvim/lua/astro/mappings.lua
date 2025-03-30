return {
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          -- redo --
          ["U"] = { "<C-r>" },

          -- mark all --
          ["<C-a>"] = { "ggVG", desc = "Mark All" },

          -- telescope files --
          ["<Leader>e"] = { "<cmd>Telescope file_browser<cr><esc>", desc = "File Browser" },
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

          -- marks --
          ["m"] = { "ma", desc = "Mark position (a)" },
          ["M"] = { "`a", desc = "Jump position (a)" },
          ["<C-m>"] = { "`'", desc = "Jump previous position" },
        },

        v = {
          -- marks --
          ["m"] = { "ma", desc = "Mark position (a)" },
          ["M"] = { "`a", desc = "Jump position (a)" },
          ["<C-m>"] = { "`'", desc = "Jump previous position" },

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
