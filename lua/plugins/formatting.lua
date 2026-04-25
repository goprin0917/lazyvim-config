return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        php = { "pint" },
        blade = { "prettier" },
        go = { "goimports", "gofumpt" },
        vue = { "oxfmt" },
        javascript = { "oxfmt" },
        typescript = { "oxfmt" },
      },
      formatters = {
        pint = {
          command = function()
            local root = vim.fn.getcwd()
            local pint = root .. "/vendor/bin/pint"
            if vim.fn.executable(pint) == 1 then
              return pint
            end
            return "pint"
          end,
        },
        oxfmt = {
          command = "npx",
          args = { "oxfmt", "--stdin-filepath", "$FILENAME" },
          stdin = true,
          cwd = require("conform.util").root_file({ "package.json" }),
        },
      },
    },
    init = function()
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = { "*.php", "*.vue" },
        callback = function(args)
          require("conform").format({ bufnr = args.buf, timeout_ms = 2000 })
        end,
      })
    end,
  },
}
