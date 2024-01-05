return {
  -- {
  --   "neovim/nvim-lspconfig",
  --   -- opts = {
  --   --   servers = {
  --   --     pyright = {},
  --   --     tsserver = {},
  --   --   },
  --   -- },
  -- },
  {
    "stevearc/conform.nvim",
    lazy = false,
    opts = function(_, opts)
      opts.formatters_by_ft.python = { "black" }
      return opts
    end,
  },
}
