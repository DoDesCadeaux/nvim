local o = vim.opt
vim.cmd[[colorscheme onedark_vivid]]
vim.cmd[[hi StatusLine guifg=white guibg=#3d4454]]
vim.cmd[[hi StatusLineNC guifg=white guibg=#21252b]]
o.termguicolors = true
o.wrap= false
o.nu= true
o.relativenumber= true
vim.cmd[[autocmd  InsertEnter * :set norelativenumber]]
vim.cmd[[autocmd  InsertLeave * :set relativenumber]]
vim.cmd[[autocmd  InsertEnter * :set nohlsearch]]
o.tabstop= 4
o.shiftwidth= 4
o.hlsearch=true
o.incsearch=true
o.colorcolumn = "120"
o.hidden = true
--o.scrolloff= 8
--o.updatetime = 400
--vim.g.mapleader=" "
--vim.g.NERDTreeWinPos = "right"
----vim.cmd[[autocmd  InsertLeave * :lua vim.g.cmp_enable = false]]
--vim.cmd[[set cursorline]]
vim.cmd[[set undofile]]
vim.cmd[[set undolevels=1000]]
vim.cmd[[set undodir=/Users/dorianduraku/.config/nvim/undodir]]
--
