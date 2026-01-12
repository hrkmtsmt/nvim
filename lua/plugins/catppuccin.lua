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
        treesitter = true,
        native_lsp = {
          enabled = true,
        },
        mason = true,
        noice = true,
        neotree = true,
        telescope = {
          enabled = true,
        },
      },
    })
    vim.cmd.colorscheme("catppuccin")
  end,
}

