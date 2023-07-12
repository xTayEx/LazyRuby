vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"

vim.wo.number = true

vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true

vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4

vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

vim.o.incsearch = true

vim.o.cmdheight = 1

vim.o.autoread = true
vim.bo.autoread = true

vim.o.mouse = "a"

vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

vim.o.splitbelow = true
vim.o.splitright = true

vim.g.completeopt = "menu,menuone,noselect,noinsert"

vim.o.background = "dark"
vim.o.termguicolors = true

vim.o.showtabline = 2

vim.o.pumheight = 10
vim.o.pumwidth = 30
vim.o.shell = 'zsh'

vim.g.mapleader = ' '

vim.cmd('syntax on')
-- reload file when changed
vim.cmd[[
set autoread                                                                                                                                                                                    
au CursorHold * checktime
]]
