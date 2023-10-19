vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.mouse = 'v'

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true

-- Go File definitions for files that are missing an extension
vim.opt.suffixesadd:append({".js", ".vue"})
vim.opt.isfname:append("@-@")
vim.opt.includeexpr = "substitute(substitute(v:fname, '^\\~/', 'cypress/', ''), '^@\\/', 'src/', '')"
