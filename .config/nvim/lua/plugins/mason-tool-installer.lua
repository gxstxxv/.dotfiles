---@type LazySpec
return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "jdtls",
        "clangd",
        "prettier",
        "lemminx",
        "css-lsp",
        "bash-language-server",
        "marksman",
        "gopls",
        "typescript-language-server",
        "yaml-language-server",
      },
    },
  },
}
