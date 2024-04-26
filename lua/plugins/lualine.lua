return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local custom_onedark = require("lualine.themes.onedark")

        custom_onedark.normal.a.bg = "#b85dd5"

        require("lualine").setup({
            options = {
                theme = custom_onedark,
            },
            sections = {
                lualine_x = { "encoding", "filetype" },
            },
        })
    end,
}
