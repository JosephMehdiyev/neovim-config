return {
    {
        'Shougo/deoplete.nvim',
        config = function()
            vim.fn['deoplete#custom#var']('omni', 'input_patterns', {
                tex = vim.g['vimtex#re#deoplete'],
            })
        end,
    },
}
