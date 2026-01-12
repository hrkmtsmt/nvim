vim.g.mapleader = " "

vim.opt.number = true
vim.opt.guifont = "UDEV Gothic 35NF"
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.pumblend = 0
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
vim.api.nvim_set_hl(0, "Visual", { bg = "NONE", ctermbg = "NONE" })

require("configs.lazy")
require("configs.lsp")

