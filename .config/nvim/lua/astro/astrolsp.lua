---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    features = {
      codelens = true,
      inlay_hints = true,
      semantic_tokens = true,
    },
    formatting = {
      format_on_save = {
        enabled = true,
        allow_filetypes = {
          -- "go",
        },
        ignore_filetypes = {
          -- "python",
        },
      },
      disabled = {
        -- "lua_ls",
      },
      timeout_ms = 1000,
    },
    servers = {},
    ---@diagnostic disable: missing-fields
    config = {
      basedpyright = {
        handlers = {
          ["textDocument/publishDiagnostics"] = function(_, result, ctx, config)
            if result and result.diagnostics then
              result.diagnostics = vim.tbl_filter(
                function(d) return d.severity == vim.diagnostic.severity.ERROR end,
                result.diagnostics
              )
            end
            vim.lsp.diagnostic.on_publish_diagnostics(_, result, ctx, config)
          end,
        },
      },
    },
  },
}
