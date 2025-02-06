return {
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1000,
    lazy = false,
    --flavour = "latte", -- latte, frappe, macchiato, mocha
    config = function ()
        vim.cmd.colorscheme "catppuccin-macchiato"
    end
}

