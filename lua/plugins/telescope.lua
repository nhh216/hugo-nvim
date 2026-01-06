return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    end,
    opts = {
        defaults = {
            files_ignore_patterns = {
                'node_modules',
                '.git',
                '.cache',
                'dist',
                'build',
                'coverage',
                'vendor',
                '__pycache__',
                'bin',
                'obj',
                '.vscode',
                '.idea',
                '.DS_Store',
                '.pytest_cache',
                '.mypy_cache',
                '.ruff_cache',
                '.ruff_cache',
                '*.log',
                'tmp',
                'temp',
                'Thumbs.db',
                "vendor",
                "*.mod",
                "go.sum",
                '*.lock',
                -- Build artifacts
                "bin",
                "dist",
                "build",
            },
        },
    },
}
