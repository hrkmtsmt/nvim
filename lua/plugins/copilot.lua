return {
  "github/copilot.vim",
  config = function()
    -- Accept suggestion with Tab
    vim.g.copilot_assume_mapped = true
    vim.g.copilot_no_tab_map = true
    vim.api.nvim_set_keymap("i", "<C-J>", "copilot#Accept(\"<CR>\")", { silent = true, expr = true, script = true })

    -- Additional keymaps
    vim.api.nvim_set_keymap("i", "<C-]>", "<Plug>(copilot-next)", { silent = true })
    vim.api.nvim_set_keymap("i", "<C-[>", "<Plug>(copilot-previous)", { silent = true })
    vim.api.nvim_set_keymap("i", "<C-\\>", "<Plug>(copilot-dismiss)", { silent = true })
  end,
}
