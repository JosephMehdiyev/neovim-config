-- This file installs, loads or in short does stuff to plugins.
-- Do not configure the plugins there, make a new file name-of-the-plugin.lua in plugin directory
-- And configure there as you please.
--
--
--
--
require('lazy').setup({
  'tpope/vim-sleuth',
  { 'numToStr/Comment.nvim', opts = {} },
  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = 'zathura'
    end,
  },

  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
  },

  -- Here is a more advanced example where we pass configuration
  -- options to `gitsigns.nvim`. This is equivalent to the following Lua:
  --    require('gitsigns').setup({ ... })
  --
  -- See `:help gitsigns` to understand what the configuration keys do

  require 'plugins.which-key',
  require 'plugins.telescope',
  require 'plugins.lspconfig',
  require 'plugins.others',
  require 'plugins.treesitter',
  --require 'kickstart.plugins.debug',
  --require 'kickstart.plugins.indent_line',
  require 'plugins.lint',
  --require 'kickstart.plugins.autopairs',
  require 'plugins.neo-tree',
  --require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps
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
