return {
    {
        -- renders headings, bullets, checkboxes, code blocks and tables in the buffer
        "MeanderingProgrammer/render-markdown.nvim",
        ft = { "markdown" },
        dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" },
        opts = {
            heading = { width = "block", left_pad = 1, right_pad = 2 },
            code = { width = "block", left_pad = 2, right_pad = 2 },
            checkbox = { checked = { scope_highlight = "@markup.strikethrough" } },
        },
        keys = {
            { "<leader>mr", "<cmd>RenderMarkdown toggle<CR>", desc = "Toggle markdown rendering" },
        },
    },
    {
        -- distraction-free writing: centered column, everything else hidden
        "folke/zen-mode.nvim",
        cmd = "ZenMode",
        opts = {
            window = {
                width = 90,
                options = { number = false, relativenumber = false, signcolumn = "no", cursorline = false },
            },
        },
        keys = {
            { "<leader>z", "<cmd>ZenMode<CR>", desc = "Zen mode" },
        },
    },
}
