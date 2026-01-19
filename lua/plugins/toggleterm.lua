return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = math.floor(vim.o.columns * 0.5),
      open_mapping = [[<C-\>]],
      direction = "vertical",
    })

    vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "ToggleTerm Open with Float" })
    vim.keymap.set("n", "<leader>tt", function()
      vim.cmd(string.format("ToggleTerm size=%d direction=vertical", math.floor(vim.o.columns * 0.5)))
    end, { desc = "TogglerTerm Open" })
    vim.keymap.set("n", "<leader>tv", function()
      vim.cmd(string.format("ToggleTerm size=%d direction=vertical", math.floor(vim.o.columns * 0.5)))
    end, { desc = "TogglerTerm Open with Vertical" })
    vim.keymap.set("n", "<leader>th", function()
      vim.cmd(string.format("ToggleTerm size=%d direction=horizontal", math.floor(vim.o.lines * 0.5)))
    end, { desc = "TogglerTerm Open with Horizontal" })
  end,
}
