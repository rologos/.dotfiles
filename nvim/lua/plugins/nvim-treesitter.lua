local M = {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
        require('nvim-treesitter.configs').setup {
            ensure_installed = { "c", "cpp", "python", "javascript", "typescript", "lua", "vim", "vimdoc", "markdown"           , "markdown_inline", "html", "css", "json", "yaml", "git_rebase", "gitattributes", "gitignore", "diff" },               -- Add or remove languages as needed
            highlight = {enable = true },
            indent = { enable = true },
        }
    end,
}

return { M }
