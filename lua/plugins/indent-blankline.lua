return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  config = function()
    require("ibl").setup({
      exclude = {
        filetypes = { "dashboard" },
      },
      scope = {
        enabled = true,
        show_start = true,
        show_end = true,
      },
    })
  end,
}
