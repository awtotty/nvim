
-- line numbers 
vim.opt.nu = true
vim.opt.relativenumber = true

-- word wrap
vim.opt.textwidth = 0
vim.opt.wrapmargin = 0
vim.opt.wrap = true 
-- (optional - breaks by word rather than character): 
vim.opt.linebreak = true 
vim.opt.columns = 80

-- tabs and spaces
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

-- use undotree for undos
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- better search highlight
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- keep 8 lines on screen when scrolling
vim.opt.scrolloff = 8

-- ???
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 20

vim.opt.colorcolumn = "80t

-- theme 
vim.opt.background = "dark"
