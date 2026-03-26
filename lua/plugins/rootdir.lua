return {
  {
    "ahmedkhalf/project.nvim",
    opts = {
      manual_mode = false,
      detection_methods = { "pattern" },
      patterns = { "composer.json", ".git", "artisan" },
    },
    event = "VeryLazy",
    config = function(_, opts)
      require("project_nvim").setup(opts)
    end,
  },
}
