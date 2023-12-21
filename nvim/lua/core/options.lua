local vim = vim
local opt = vim.opt

vim.wo.number = true
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"

