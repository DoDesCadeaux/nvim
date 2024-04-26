-- Colorscheme OneDarkPro
return {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    config = function()
    --Utiliser onedark au lancement de nvim
        vim.cmd("colorscheme onedark_vivid")
    end
}


