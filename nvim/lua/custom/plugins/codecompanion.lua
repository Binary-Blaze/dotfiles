return {
    "olimorris/codecompanion.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "hrsh7th/nvim-cmp",                      -- Optional: For using slash commands and variables in the chat buffer
        "nvim-telescope/telescope.nvim",         -- Optional: For using slash commands
        { "stevearc/dressing.nvim", opts = {} }, -- Optional: Improves `vim.ui.select`
    },
    config = function()
        vim.keymap.set('n', '<leader>lca', '<cmd>CodeCompanionActions<CR>', { desc = 'Companion [A]ctions' })
        vim.keymap.set('v', '<leader>lca', '<cmd>CodeCompanionActions<CR>', { desc = 'Companion [A]ctions' })
        vim.keymap.set('v', '<leader>tc', '<cmd>CodeCompanionChat Toggle<CR>',
            { desc = 'Toggle [C]ompanion Chat' })
        vim.keymap.set('n', '<leader>tc', '<cmd>CodeCompanionChat Toggle<CR>',
            { desc = 'Toggle [C]ompanion Chat' })
        vim.keymap.set('n', '<leader>lct', '<cmd>CodeCompanionChat Toggle<CR>',
            { desc = '[T]oggle Companion Chat' })
        vim.keymap.set('v', '<leader>lct', '<cmd>CodeCompanionChat Toggle<CR>',
            { desc = '[T]oggle Companion Chat' })
        vim.keymap.set('n', '<leader>lca', '<cmd>CodeCompanionChat Add<CR>', { desc = '[A]dd Companion Chat' })

        require("codecompanion").setup({
            display = {
                chat = {
                    window = { width = 0.25 }
                },
            },
            strategies = {
                chat = {
                    adapter = "anthropic",
                },
                inline = {
                    adapter = "anthropic",
                },
                agent = {
                    adapter = "anthropic",
                },
            },

        })
    end,
}
