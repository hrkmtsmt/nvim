return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_diagnostics = true,
      default_component_configs = {
        indent = {
          indent_size = 2,
          padding = 1,
        },
      },
      window = {
        position = "left",
        width = 30,
      },
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        follow_current_file = {
          enabled = true,
        },
        group_empty_dirs = true,
      },
    })

    vim.keymap.set("n", "<leader>ee", ":Neotree action=focus<CR>", { silent = true })
    vim.keymap.set("n", "<leader>eo", ":Neotree action=open<CR>", { silent = true })
    vim.keymap.set("n", "<leader>ec", ":Neotree action=close<CR>", { silent = true })
    vim.keymap.set("n", "<leader>et", ":Neotree toggle<CR>", { silent = true })
  end,
}

