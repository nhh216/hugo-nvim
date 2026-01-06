return {
    "fatih/vim-go",
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
        -- Tự động format khi save
        vim.g.go_fmt_autosave = 1
        vim.g.go_fmt_command = "goimports"

        -- Syntax highlighting
        vim.g.go_highlight_types = 1
        vim.g.go_highlight_fields = 1
        vim.g.go_highlight_functions = 1
        vim.g.go_highlight_function_calls = 1
        vim.g.go_highlight_operators = 1
        vim.g.go_highlight_extra_types = 1
        vim.g.go_highlight_build_constraints = 1
        vim.g.go_highlight_generate_tags = 1

        -- Auto import packages
        vim.g.go_imports_autosave = 1
        vim.g.go_mod_fmt_autosave = 1
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.gofmt,
                null_ls.builtins.formatting.goimports,
                null_ls.builtins.code_actions.gomodifytags,
                null_ls.builtins.code_actions.impl,
                null_ls.builtins.diagnostics.golangci_lint,
            },
        })
    end
}
