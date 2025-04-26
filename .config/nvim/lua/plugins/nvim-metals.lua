return {
  "scalameta/nvim-metals",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  ft = { "scala", "sbt", "java" },
  opts = function()
    local metals_config = require("metals").bare_config()

    metals_config.on_attach = function(client, bufnr)
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Goto Implementation" })
      vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Goto References" })
      vim.keymap.set("n", "<leader>lL", vim.lsp.codelens.run, { desc = "LSP Codelens Run" })
      vim.keymap.set("n", "<leader>lh", vim.lsp.buf.signature_help, { desc = "Signature Help" })
      vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Rename" })
      vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, { desc = "Format" })
      vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, { desc = "Code Action" })

      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { async = false } -- oder async = true, je nach Geschmack
        end,
        desc = "[LSP] Format on save",
      })
    end

    return metals_config
  end,
  config = function(self, metals_config)
    local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
    vim.api.nvim_create_autocmd("FileType", {
      pattern = self.ft,
      callback = function() require("metals").initialize_or_attach(metals_config) end,
      group = nvim_metals_group,
    })
  end,
}
