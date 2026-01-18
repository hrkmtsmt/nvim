local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.uv.fs_lstat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    require("plugins.blink-cmp"),
    require("plugins.catppuccin"),
    require("plugins.git-blame"),
    require("plugins.gitsigns"),
    require("plugins.indent-blankline"),
    require("plugins.lualine"),
    require("plugins.mason"),
    require("plugins.mason-lspconfig"),
    require("plugins.oil"),
    require("plugins.noice"),
    require("plugins.nvim-autopairs"),
    require("plugins.nvim-lspconfig"),
    require("plugins.nvim-treesitter"),
    require("plugins.render-markdown"),
    require("plugins.telescope"),
    require("plugins.toggleterm"),
  },
})

