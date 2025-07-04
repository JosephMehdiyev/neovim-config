return {

    { -- Adds git related signs to the gutter, as well as utilities for managing changes
        {
            'windwp/nvim-ts-autotag', -- Plugin repository
            dependencies = { 'nvim-treesitter/nvim-treesitter' }, -- Ensure Treesitter is installed
            config = function()
                -- Plugin configuration goes here
                require('nvim-ts-autotag').setup {
                    opts = {
                        -- Global configuration
                        enable_close = true, -- Auto close tags
                        enable_rename = true, -- Auto rename pairs of tags
                        enable_close_on_slash = true, -- Auto close on trailing </
                    },
                }
            end,
        },
    },
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        config = true,
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
    { -- Collection of various small independent plugins/modules
        'echasnovski/mini.nvim',
        config = function()
            -- Better Around/Inside textobjects
            --
            -- Examples:
            --  - va)  - [V]isually select [A]round [)]paren
            --  - yinq - [Y]ank [I]nside [N]ext [']quote
            --  - ci'  - [C]hange [I]nside [']quote
            require('mini.ai').setup { n_lines = 500 }

            -- Add/delete/replace surroundings (brackets, quotes, etc.)
            --
            -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
            -- - sd'   - [S]urround [D]elete [']quotes
            -- - sr)'  - [S]urround [R]eplace [)] [']
            require('mini.surround').setup()

            -- Simple and easy statusline.
            --  You could remove this setup call if you don't like it,
            --  and try some other statusline plugin
            local statusline = require 'mini.statusline'
            -- set use_icons to true if you have a Nerd Font
            statusline.setup { use_icons = vim.g.have_nerd_font }

            -- You can configure sections in the statusline by overriding their
            -- defavim.cmd 'TransparentEnable'
            vim.cmd.colorscheme 'onedark'
            -- cursor location to LINE:COLUMN
            ---@diagnostic disable-next-line: duplicate-set-field
            statusline.section_location = function()
                return '%2l:%-2v'
            end

            -- ... and there is more!
            --  Check out: https://github.com/echasnovski/mini.nvim
        end,
    },
    { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
    { 'xiyaowong/transparent.nvim' },
    { 'navarasu/onedark.nvim' },
}
