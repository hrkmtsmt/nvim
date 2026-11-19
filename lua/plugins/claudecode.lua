return {
  "coder/claudecode.nvim",
  dependencies = { "akinsho/toggleterm.nvim" },
  config = function()
    require("claudecode").setup({
      terminal = { provider = "none" },
    })

    local claude = require("toggleterm.terminal").Terminal:new({
      cmd = "claude --ide",
      direction = "vertical",
    })
    vim.keymap.set("n", "<leader>cc", function()
      claude:toggle(math.floor(vim.o.columns * 0.5))
    end, { desc = "ClaudeCode Toggle" })
  end,
}
