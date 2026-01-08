return {
  "AlexandrosAlexiou/kotlin.nvim",
  ft = { "kotlin" },
  dependencies = {
    "mason.nvim",
    "mason-lspconfig.nvim",
    "stevearc/oil.nvim", -- File explorer
    "folke/trouble.nvim", -- Diagnostics list
  },
  config = function()
    require("kotlin").setup({
      -- Root markers for your project
      root_markers = {
        "gradlew",
        ".git",
        "mvnw",
        "settings.gradle",
        "settings.gradle.kts",
      },

      -- JRE to run the language server (leave nil to use bundled JRE from Mason)
      jre_path = nil,

      -- JDK for analyzing your code (leave nil for auto-detection)
      jdk_for_symbol_resolution = nil,

      -- Optional: Increase memory for large projects
      jvm_args = {
        "-Xmx4g",
      },

      -- Inlay hints configuration
      inlay_hints = {
        enabled = true,
        parameters = true,
        types_property = true,
        types_variable = true,
        function_return = true,
      },
    })
  end,
}
