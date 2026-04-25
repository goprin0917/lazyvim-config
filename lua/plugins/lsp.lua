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
                "date",
                "dom",
                "json",
                "libxml",
                "mbstring",
                "mysql",
                "mysqli",
                "openssl",
                "pcre",
                "PDO",
                "pdo_mysql",
                "Phar",
                "SimpleXML",
                "standard",
                "tokenizer",
                "xml",
                "xmlwriter",
                "zip",
                "zlib",
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
        clangd = {
          keys = {
            { "<leader>ch", "<cmd>LspClangdSwitchSourceHeader<cr>", desc = "Switch Source/Header (C/C++)" },
          },
          root_markers = {
            "compile_commands.json",
            "compile_flags.txt",
            "configure.ac", -- AutoTools
            "Makefile",
            "configure.ac",
            "configure.in",
            "config.h.in",
            "meson.build",
            "meson_options.txt",
            "build.ninja",
            ".git",
          },
          capabilities = {
            offsetEncoding = { "utf-16" },
          },
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--fallback-style=llvm",
          },
          init_options = {
            usePlaceholders = true,
            completeUnimported = true,
            clangdFileStatus = true,
          },
        },
      },
    },
  },
}
