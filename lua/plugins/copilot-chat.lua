return {
  "CopilotC-Nvim/CopilotChat.nvim",
  branch = "main",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
  },
  opts = {
    debug = false,
  },
  config = function(_, opts)
    require("CopilotChat").setup(opts)

    -- Keymaps
    vim.keymap.set("n", "<leader>gc", "<cmd>CopilotChatToggle<cr>", { desc = "CopilotChat - Toggle" })
    vim.keymap.set("v", "<leader>ge", "<cmd>CopilotChatExplain<cr>", { desc = "CopilotChat - Explain code" })
    vim.keymap.set("v", "<leader>gr", "<cmd>CopilotChatReview<cr>", { desc = "CopilotChat - Review code" })
    vim.keymap.set("v", "<leader>gf", "<cmd>CopilotChatFix<cr>", { desc = "CopilotChat - Fix code" })
    vim.keymap.set("v", "<leader>go", "<cmd>CopilotChatOptimize<cr>", { desc = "CopilotChat - Optimize code" })
    vim.keymap.set("v", "<leader>gd", "<cmd>CopilotChatDocs<cr>", { desc = "CopilotChat - Add documentation" })
    vim.keymap.set("v", "<leader>gt", "<cmd>CopilotChatTests<cr>", { desc = "CopilotChat - Generate tests" })
  end,
}
