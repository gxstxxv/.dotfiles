return {
  "ggandor/leap.nvim",
  enabled = true,
  config = function() vim.keymap.set({ "x", "n" }, "f", "<Plug>(leap)") end,
}
