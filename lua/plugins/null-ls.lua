return {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local null_ls = require("null-ls")
        local formatting = null_ls.builtins.formatting

        null_ls.setup({
            debug = false,
            sources = {
                formatting.goimports,
                formatting.gofmt,
                formatting.prettier.with({
                    dynamic_command = function()
                        local prettier_local = vim.fn.getcwd() .. "/node_modules/.bin/prettier"
                        if vim.fn.executable(prettier_local) == 1 then
                            return prettier_local
                        end
                        return "prettier"
                    end,
                    extra_args = { "--config-precedence", "prefer-file" },
                }),
            },
            on_attach = function(client, bufnr)
                if client.supports_method("textDocument/formatting") then
                    local augroup = vim.api.nvim_create_augroup("LspFormatting", { clear = true })
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = augroup,
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({
                                bufnr = bufnr,
                                async = false,
                                timeout_ms = 5000,
                                filter = function(c)
                                    return c.name == "null-ls"
                                end,
                            })
                        end,
                    })
                end
            end,
        })
    end
}
