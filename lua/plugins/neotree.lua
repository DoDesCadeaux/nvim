return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        --Keymap pour neotree
        vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left<CR>')
        vim.keymap.set('n', '<leader>N', ':Neotree filesystem close<CR>')
    end
}

