require("mason").setup()

local language_servers = { "lua_ls", "ts_ls" }
require("mason-lspconfig").setup({
  ensure_installed = language_servers,
})

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          vim.env.VIMRUNTIME,
        },
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
})

vim.lsp.enable(language_servers)

vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
