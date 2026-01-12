return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    size = function()
      return math.floor(vim.o.columns * 0.5)
    end,
    open_mapping = [[<D-S-t>]],
    direction = "vertical",
  },
}
