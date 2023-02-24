local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format({
      filter = function(client)
        return client.name == "null-ls"
      end,
      bufnr = bufnr,
  })
end

local has_eslint_config = function(utils)
  return utils.root_has_file({ ".eslintrc.json", ".eslintrc.js", ".eslintrc.cjs" })
end


null_ls.setup {
    sources = {
        -- null_ls.builtins.formatting.prettierd,
        null_ls.builtins.diagnostics.zsh
    },
    on_attach = function(client, bufnr)
      if client.server_capabilities.documentFormattingProvider then
        vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format({ timeout_ms = 4000 })")
      end
    end
}

vim.api.nvim_create_user_command(
    'DisableLspFormatting',
    function()
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = 0 })
    end,
    { nargs = 0 }
)
