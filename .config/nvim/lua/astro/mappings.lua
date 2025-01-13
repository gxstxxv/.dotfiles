return {
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          -- switch buffer/tabs --
          ["H"] = { "<cmd>bprevious<cr>", desc = "Buffer Previous" },
          ["L"] = { "<cmd>bnext<cr>", desc = "Buffer Next" },

          -- redo --
          ["U"] = { "<C-r>" },

          -- open terminal new buffer --
          ["<C-t>"] = { "<cmd>te<cr>" },

          -- mark all --
          ["<C-a>"] = { "ggVG", desc = "Mark All" },

          -- telescope files --
          ["<Leader>e"] = { "<cmd>Telescope file_browser<cr><esc>", desc = "File Browser" },
          ["<Leader><Leader>"] = { "<cmd>Telescope find_files<cr>", desc = "Find Files" },
          ["E"] = { "<cmd>Neotree toggle position=bottom<cr>", desc = "Toggle Explorer" },

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

          -- search --
          ["|"] = { "<cmd>Telescope current_buffer_fuzzy_find<cr>" },

          -- mini.surround --
          ["<Leader>s"] = { desc = "Surround" },
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
