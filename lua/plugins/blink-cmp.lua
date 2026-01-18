return {
  "saghen/blink.cmp",
  dependencies = "rafamadriz/friendly-snippets",
  version = "*",
  config = function()
    require("blink.cmp").setup({
      keymap = {
        preset = "default",
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-Enter>"] = { "select_and_accept", "fallback" },
      },
      appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "mono",
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
      completion = {
        menu = {
          border = "single",
        },
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 500,
        },
      },
    })
  end,
}
