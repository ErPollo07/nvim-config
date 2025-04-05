return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Formatter
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.clang_format,

				-- Diagnostics
				null_ls.builtins.diagnostics.clangd,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
