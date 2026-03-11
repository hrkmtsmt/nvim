return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = math.floor(vim.o.columns * 0.5),
      open_mapping = [[<C-\>]],
      direction = "vertical",
    })

    vim.keymap.set("t", "<C-q>", [[<C-\><C-n>]], { desc = "ToggleTerm Exit terminal mode" })
    vim.keymap.set("t", "<C-[><C-[>", [[<C-\><C-n>]], { desc = "ToggleTerm Exit terminal mode" })
    vim.keymap.set("n", "<leader>tq", [[<C-w>h]], { desc = "ToggleTerm Move cursor to left window" })
    vim.keymap.set("n", "<leader>ti", [[<C-w>l]], { desc = "ToggleTerm Move cursor to terminal" })

    vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", { desc = "ToggleTerm Open with Float" })
    vim.keymap.set("n", "<leader>tt", function()
      vim.cmd(string.format("ToggleTerm size=%d direction=vertical", math.floor(vim.o.columns * 0.5)))
    end, { desc = "TogglerTerm Open" })
    vim.keymap.set("n", "<leader>tn", function()
      local terminals = require("toggleterm.terminal").get_all()
      local new_id = #terminals + 1
      vim.cmd(string.format("%dToggleTerm size=%d direction=vertical", new_id, math.floor(vim.o.columns * 0.5)))
    end, { desc = "ToggleTerm New" })
    vim.keymap.set("n", "<leader>tv", function()
      vim.cmd(string.format("ToggleTerm size=%d direction=vertical", math.floor(vim.o.columns * 0.5)))
    end, { desc = "TogglerTerm Open with Vertical" })
    vim.keymap.set("n", "<leader>th", function()
      vim.cmd(string.format("ToggleTerm size=%d direction=horizontal", math.floor(vim.o.lines * 0.5)))
    end, { desc = "TogglerTerm Open with Horizontal" })
    vim.keymap.set("n", "<leader>ts", "<cmd>TermSelect<cr>", { desc = "ToggleTerm Select" })
  end,
}
