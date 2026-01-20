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

    vim.keymap.set("n", "<leader>gc", "<cmd>CopilotChatToggle<cr>", { desc = "CopilotChat Opne" })
  end,
}
