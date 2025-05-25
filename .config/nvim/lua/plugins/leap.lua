return {
  "ggandor/leap.nvim",
  enabled = false,
  config = function() vim.keymap.set({ "x", "n" }, "f", "<Plug>(leap)") end,
}
