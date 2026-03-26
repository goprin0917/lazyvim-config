return {
  {
    "adalessa/laravel.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-neotest/nvim-nio",
    },
    ft = { "php", "blade" },
    event = { "BufEnter composer.json" },
    keys = {
      {
        "<leader>ll",
        function()
          Laravel.pickers.laravel()
        end,
        desc = "Laravel: Open Laravel Picker",
      },
      {
        "<leader>la",
        function()
          Laravel.pickers.artisan()
        end,
        desc = "Laravel: Open Artisan Picker",
      },
      {
        "<leader>lr",
        function()
          Laravel.pickers.routes()
        end,
        desc = "Laravel: Open Routes Picker",
      },
      {
        "<leader>lm",
        function()
          Laravel.pickers.make()
        end,
        desc = "Laravel: Open Make Picker",
      },
      {
        "<leader>lu",
        function()
          Laravel.commands.run("hub")
        end,
        desc = "Laravel: Hub",
      },
    },
    opts = {
      features = {
        pickers = {
          provider = "snacks", -- you're using LazyVim which has snacks.nvim built in
        },
      },
    },
  },
}
