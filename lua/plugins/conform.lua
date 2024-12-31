return {
    {
        'stevearc/conform.nvim',
        config = function()
            require('conform').setup {
                formatters_by_ft = {
                    lua = { 'stylua' },
                    -- Conform will run multiple formatters sequentially
                    python = { 'isort', 'black' },
                    -- You can customize some of the format options for the filetype (:help conform.format)
                    -- Conform will run the first available formatter
                    tex = { 'latexindent' },
                },
                format_on_save = {
                    -- These options will be passed to conform.format()
                    timeout_ms = 50000,
                    lsp_format = 'fallback',
                },
            }
        end,
    },
}
