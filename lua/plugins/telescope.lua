return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            ["<esc>"] = actions.close,
          },
        },
        file_ignore_patterns = {
          "node_modules",
          ".git/",
        },
        layout_config = {
          horizontal = {
            preview_width = 0.55,
          },
        },
      },
      pickers = {
        find_files = {
          hidden = true,
        },
        live_grep = {
          additional_args = { "--hidden" },
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
      },
    })

    telescope.load_extension("fzf")

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope Find File" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope Live Grep" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope Buffers" })
    vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Telescope Recent Files" })
    vim.keymap.set("n", "<leader>fc", builtin.commands, { desc = "Telescope Commands" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "TelescopeHelp Tags" })

    vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "NONE" })
  end,
}
