return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({
      signs = {
        add = { text = "┃" },
        change = { text = "┃" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
        untracked = { text = "┆" },
      },
      signs_staged = {
        add = { text = "┃" },
        change = { text = "┃" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
        untracked = { text = "┆" },
      },
    })

    local mocha = require("catppuccin.palettes").get_palette("mocha")

    vim.api.nvim_set_hl(0, "GitSignsAddPreview", { bg = mocha.green, fg = mocha.base })
    vim.api.nvim_set_hl(0, "GitSignsDeletePreview", { bg = mocha.red, fg = mocha.base })
    vim.api.nvim_set_hl(0, "GitSignsAddInline", { bg = mocha.green, fg = mocha.base })
    vim.api.nvim_set_hl(0, "GitSignsDeleteInline", { bg = mocha.red, fg = mocha.base })
    vim.api.nvim_set_hl(0, "GitSignsChangeInline", { bg = mocha.yellow, fg = mocha.base })

    vim.keymap.set("n", "<leader>dr", "<cmd>Gitsigns reset_hunk<cr>", { desc = "Gitsings Reset Hunk" })
    vim.keymap.set("n", "<leader>dp", "<cmd>Gitsigns preview_hunk_inline<cr>", { desc = "Gitsings Preview Hunk" })
  end,
}
