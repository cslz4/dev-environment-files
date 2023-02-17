-- -- import null-ls plugin safely
-- local setup, null_ls = pcall(require, "null-ls")
-- if not setup then
-- 	return
-- end
-- 
-- -- for conciseness
-- local formatting = null_ls.builtins.formatting -- to setup formatters
-- local diagnostics = null_ls.builtins.diagnostics -- to setup lintersa
-- local completion = null_ls.builtins.completion
-- local code_actions = null_ls.builtins.code_actions
-- 
-- -- to setup format on save
-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
-- 
-- local function has_eslint_configured(utils)
-- 	return utils.root_has_file(".eslintrc.json") or utils.root_has_file(".eslintrc.js")
-- end
-- 
-- -- configure null_ls
-- null_ls.setup({
-- 	-- setup formatters & linters
-- 	sources = {
-- 		diagnostics.eslint.with({ condition = has_eslint_configured }),
-- 		formatting.eslint.with({ condition = has_eslint_configured }),
-- 		code_actions.eslint.with({ condition = has_eslint_configured }),
-- 		formatting.prettier.with({
-- 			-- Enable conditionally if and only if eslint_d is not enabled.
-- 			-- This can be for either non-project files and for filetypes that
-- 			-- eslintd does not support.
-- 			condition = function()
-- 				local eslintd_enabled = #null_ls.get_source({
-- 					name = "eslint_d",
-- 					method = null_ls.methods.FORMATTING,
-- 				})
-- 				return eslintd_enabled == 0
-- 			end,
-- 		}),
-- 		formatting.stylua,
-- 	},
-- 	-- configure format on save
-- 	on_attach = function(current_client, bufnr)
-- 		if current_client.supports_method("textDocument/formatting") then
-- 			vim.api.nvim_create_autocmd("BufWritePre", {
-- 				group = augroup,
-- 				buffer = bufnr,
-- 				callback = function()
-- 					vim.lsp.buf.format({
-- 						filter = function(client)
-- 							return client.name ~= "null-ls"
-- 						end,
-- 						bufnr = bufnr,
-- 					})
-- 				end,
-- 			})
-- 		end
-- 	end,
-- })
