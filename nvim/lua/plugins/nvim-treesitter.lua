local M = {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
        require('nvim-treesitter.configs').setup {
            auto_install = true,
            highlight = {enable = true },
            indent = { enable = true },
        }
    end,
}

return { M }
