return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("diffview").setup()
    vim.keymap.set("n", "<leader>do", "<cmd>DiffviewOpen<cr>", { desc = "Diffview Open" })
    vim.keymap.set("n", "<leader>dc", "<cmd>DiffviewClose<cr>", { desc = "Diffview Close" })
    vim.keymap.set("n", "<leader>de", "<cmd>DiffviewFocusFiles<cr>", { desc = "Diffview Files" })
    vim.keymap.set("n", "<leader>dr", "<cmd>DiffviewRefresh<cr>", { desc = "Diffview Refresh" })
  end,
}
