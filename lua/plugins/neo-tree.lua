-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
        'MunifTanjim/nui.nvim',
    },
    cmd = 'Neotree',
    keys = {
        { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
        { '<Space>hdd', ':cd /run/media/archlinux/HDD/Projects<CR>', { desc = 'NeoTree cd to HDD projects' } },
        { '<space>home', ': cd ~/<CR>', { desc = ' NeoTree cd to HOME ' } },
        { '<Space>config', ': cd ~/.config/nvim<CR>', { desc = 'NeoTree cd to NVIM config' } },
    },
    opts = {
        filesystem = {
            window = {
                mappings = {
                    ['\\'] = 'close_window',
                },
                width = 30,
            },
        },
    },
}
