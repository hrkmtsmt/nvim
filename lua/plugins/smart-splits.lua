return {
  "mrjones2014/smart-splits.nvim",
  config = function()
    local splits = require("smart-splits")
    vim.keymap.set("n", "<C-h>", splits.resize_left, { desc = "SmartSplits Resize left" })
    vim.keymap.set("n", "<C-j>", splits.resize_down, { desc = "SmartSplits Resize down" })
    vim.keymap.set("n", "<C-k>", splits.resize_up, { desc = "SmartSplits Resize up" })
    vim.keymap.set("n", "<C-l>", splits.resize_right, { desc = "SmartSplits Resize right" })
  end,
}
