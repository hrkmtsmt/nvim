return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = {
        "javascript",
        "jsx",
        "lua",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
      },
      highlight = { enable = true },
    })
  end,
}
