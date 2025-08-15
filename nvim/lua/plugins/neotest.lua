return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-neotest/neotest-jest",
    "marilari88/neotest-vitest",
  },
  opts = {
    adapters = {
      -- Jest
      ["neotest-jest"] = {
        jestCommand = "npm test --",
        cwd = function()
          return vim.fn.getcwd()
        end,
      },
      -- Vitest
      ["neotest-vitest"] = {
        filter_dir = function(name)
          return name ~= "node_modules"
        end,
      },
    },
  },
}
