return {
    'nvim-lualine/lualine.nvim',
    config = function()
        require('lualine').setup({
            options = {
                theme = 'catppuccin-macchiato'
            },
            sections = {
                lualine_x = { "encoding", { "fileformat", symbols = { unix = "" } }, "filetype" },
            },
        })
    end,

    dependencies = { 'nvim-tree/nvim-web-devicons' }
}
