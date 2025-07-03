-- lua/plugins/vim-matchup.lua
return {
    {
        'andymass/vim-matchup',
        event = 'VeryLazy', -- or "BufRead" if you want it sooner
        config = function()
            -- optional settings
            vim.g.matchup_matchparen_offscreen = { method = 'popup' } -- better UX when matching offscreen
            vim.g.matchup_override_vimtex = 1 -- important if using with vimtex
            vim.g.matchup_matchparen_deferred = 1 -- better performance
        end,
    },
}
