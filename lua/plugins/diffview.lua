return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local actions = require("diffview.config").actions
    require("diffview").setup()
    vim.keymap.set("n", "<leader>dvo", "<cmd>DiffviewOpen<cr>", { desc = "Diffview Open" })
    vim.keymap.set("n", "<leader>dvc", "<cmd>DiffviewClose<cr>", { desc = "Diffview Close" })
    vim.keymap.set("n", "<leader>dve", "<cmd>DiffviewFocusFiles<cr>", { desc = "Diffview Files" })
    vim.keymap.set("n", "<leader>dvr", "<cmd>DiffviewRefresh<cr>", { desc = "Diffview Refresh" })
    vim.keymap.set("n", "<leader>dvf", actions.focus_entry, { desc = "Diffview Focus Entry" })
    vim.keymap.set("n", "<leader>co", actions.conflict_choose("ours"), { desc = "Diffview Choose OURS (CURRENT)" })
    vim.keymap.set("n", "<leader>ct", actions.conflict_choose("theirs"), { desc = "Diffview Choose THEIRS (INCOMING)" })
  end,
}
