return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("diffview").setup()
    vim.keymap.set("n", "<leader>dvo", "<cmd>DiffviewOpen<cr>", { desc = "Diffview Open" })
    vim.keymap.set("n", "<leader>dvc", "<cmd>DiffviewClose<cr>", { desc = "Diffview Close" })
    vim.keymap.set("n", "<leader>dve", "<cmd>DiffviewFocusFiles<cr>", { desc = "Diffview Files" })
  end,
}
