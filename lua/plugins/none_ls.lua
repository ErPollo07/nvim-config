return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
	  sources = {
 				null_ls.builtins.formatting.stylua,
 				null_ls.builtins.formatting.clang_format,
 				null_ls.builtins.formatting.prettier,
 				null_ls.builtins.formatting.ast_grep,
   			null_ls.builtins.formatting.markdownlint,

        -- Diagnostics
        null_ls.builtins.diagnostics.clangd,
 				null_ls.builtins.diagnostics.eslint_d,
 				null_ls.builtins.diagnostics.markdownlint,
				null_ls.builtins.diagnostics.ast_grep,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
