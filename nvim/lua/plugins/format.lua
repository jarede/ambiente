return {
  {
    "stevearc/conform.nvim",
    opts = function()
      local opts = {
        formatters_by_ft = {
          jinja = { "djlint" },
        },
        -- You can also define global formatters or customize existing ones here
        -- formatters = {
        --   djlint = {
        --     prepend_args = { "--reformat", "-" }, -- Example: Add specific djLint arguments
        --   },
        -- },
      }
      return opts
    end,
  },
}
