return {
    'romgrk/barbar.nvim',
    dependencies = {
        'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
        'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
        -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
        -- animation = true,
        -- insert_at_start = true,
        -- …etci.
        -- Enable/disable animations
        animation = true,

        -- Enable/disable auto-hiding the tab bar when there is a single buffer
        auto_hide = false,

        -- Enable/disable current/total tabpages indicator (top right corner)
        tabpages = true,

        -- Enables/disable clickable tabs
        clickable = true,

        -- Enable/disable close button
        closable = true,

        -- Icons configuration
        icons = {
            buffer_index = false,
            buffer_number = false,
            button = '',
            diagnostics = {
                [vim.diagnostic.severity.ERROR] = { enabled = true, icon = 'ﬀ' },
                [vim.diagnostic.severity.WARN] = { enabled = false },
                [vim.diagnostic.severity.INFO] = { enabled = false },
                [vim.diagnostic.severity.HINT] = { enabled = true },
            },
            gitsigns = {
                added = { enabled = true, icon = '+' },
                changed = { enabled = true, icon = '~' },
                deleted = { enabled = true, icon = '-' },
            },
            filetype = {
                custom_colors = false,
                enabled = true,
            },
            separator = { left = '▎', right = '' },
            modified = { button = '●' },
            pinned = { button = '', filename = true },
            preset = 'default',
            alternate = { filetype = { enabled = false } },
            current = { buffer_index = true },
            inactive = { button = '×' },
            visible = { modified = { buffer_number = false } },
        },

    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
