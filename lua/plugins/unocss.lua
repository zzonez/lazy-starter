return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        unocss = {
          -- on_attach = function(client, bufnr)
          --   -- Your on_attach function here
          -- end,
          -- capabilities = function()
          --   -- Your capabilities setup here
          --   return require("cmp_nvim_lsp").default_capabilities()
          -- end,
          -- filetypes = { "html", "javascriptreact", "typescriptreact", "vue", "svelte" },
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern(
              "unocss.config.js",
              "unocss.config.ts",
              "uno.config.js",
              "uno.config.ts"
            )(fname)
          end,
        },
      },
    },
  },
}
