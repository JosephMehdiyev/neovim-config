-- This file installs, loads or in short does stuff to plugins.
-- Do not configure the plugins there, make a new file name-of-the-plugin.lua in plugin directory
-- And configure there as you please.
--
--
--
--
--
--require('lazy').setup('plugins', { concurrency = 10 })

require('lazy').setup({
    'tpope/vim-sleuth',
    { 'numToStr/Comment.nvim', opts = {} },
    {
        'lervag/vimtex',
        ft = 'tex',
        priority = 1000,
        lazy = false, -- we don't want to lazy load VimTeX
        -- tag = "v2.15", -- uncomment to pin to a specific release
        init = function()
            -- VimTeX configuration goes here, e.g.
            vim.g.vimtex_view_method = 'zathura'
        end,
    },

    {
        's1n7ax/nvim-window-picker',
        name = 'window-picker',
        event = 'VeryLazy',
        version = '2.*',
        config = function()
            require('window-picker').setup()
        end,
    },

    -- Here is a more advanced example where we pass configuration
    -- options to `gitsigns.nvim`. This is equivalent to the following Lua:
    --    require('gitsigns').setup({ ... })
    --
    -- See `:help gitsigns` to understand what the configuration keys do

    require 'plugins.deoplete',
    require 'plugins.vim-matchup',
    require 'plugins.which-key',
    require 'plugins.telescope',
    require 'plugins.lspconfig',
    require 'plugins.treesitter',
    require 'plugins.others',
    require 'plugins.indent_line',
    require 'plugins.tab',
    require 'plugins.neo-tree',
    require 'plugins.gitsigns', -- adds gitsigns recommend keymaps
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
    },
}, {
    ui = {
        -- If you are using a Nerd Font: set icons to an empty table which will use the
        -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
        icons = vim.g.have_nerd_font and {} or {
            cmd = '⌘',
            config = '🛠',
            event = '📅',
            ft = '📂',
            init = '⚙',
            keys = '🗝',
            plugin = '🔌',
            runtime = '💻',
            require = '🌙',
            source = '📄',
            start = '🚀',
            task = '📌',
            lazy = '💤 ',
        },
    },
})
