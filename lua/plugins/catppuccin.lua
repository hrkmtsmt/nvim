return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = true,
      float = {
        transparent = true,
      },
      integrations = {
        gitsigns = true,
        treesitter = true,
        diffview = true,
        mason = true,
        noice = true,
        neotree = true,
        native_lsp = {
          enabled = true,
        },
        telescope = {
          enabled = true,
        },
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}
