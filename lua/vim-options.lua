vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set nu")
vim.cmd("autocmd  InsertEnter * :set norelativenumber")
vim.cmd("autocmd  InsertLeave * :set relativenumber")
vim.cmd("autocmd  InsertEnter * :set nohlsearch")
vim.g.mapleader = '\\'

vim.cmd("set undofile")
vim.cmd("set undolevels=1000")
vim.cmd("set undodir=~/.config/nvim/undodir")
