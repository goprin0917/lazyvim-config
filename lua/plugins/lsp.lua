return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        intelephense = {
          settings = {
            intelephense = {
              format = {
                enable = false,
              },
              stubs = {
                "apache",
                "bcmath",
                "Core",
                "SPL",
                "date",
                "dom",
                "json",
                "libxml",
                "mbstring",
                "mysql",
                "mysqli",
                "openssl",
                "curl",
                "ctype",
                "fileinfo",
                "pcre",
                "PDO",
                "Reflection",
                "session",
                "filter",
                "hash",
                "Phar",
                "SimpleXML",
                "standard",
                "tokenizer",
                "xml",
                "xmlwriter",
                "zip",
                "zlib",
                -- Laravel-friendly
                "laravel",
                "pdo_mysql",
                "redis",
              },
              environment = {
                phpVersion = "8.5",
              },
            },
            format = {
              enable = false,
            },
          },
        },
        gopls = {
          settings = {
            gopls = {
              -- Disable the buggy unused analyses
              analyses = {
                -- These cause false positives in multi-file packages
                unusedparams = false,
                unusedvariable = false,
                unusedwrite = false,
              },
              -- Keep staticcheck enabled for real issues
              staticcheck = true,
              semanticTokens = true,
            },
          },
        },
      },
    },
  },
}
