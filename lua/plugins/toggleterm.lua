return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = math.floor(vim.o.columns * 0.5),
      open_mapping = [[<C-\>]],
      direction = "vertical",
    })

    vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>")
    vim.keymap.set("n", "<leader>tt", function()
      vim.cmd(string.format("ToggleTerm size=%d direction=vertical", math.floor(vim.o.columns * 0.5)))
    end)
    vim.keymap.set("n", "<leader>th", function()
      vim.cmd(string.format("ToggleTerm size=%d direction=horizontal", math.floor(vim.o.lines * 0.5)))
    end)
  end,
}
