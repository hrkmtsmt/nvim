return {
  "greggh/claude-code.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>cc", "<cmd>ClaudeCode<cr>", desc = "Open Claude Code" },
  },
  config = function()
    require("claude-code").setup({
      window = {
        position = "vertical",
      },
    })
  end,
}
