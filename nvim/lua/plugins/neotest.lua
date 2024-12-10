return {
  "nvim-neotest/neotest",
  optional = true,
  dependencies = {
    "olimorris/neotest-rspec",
    "nvim-neotest/neotest-jest",
    "marilari88/neotest-vitest",
  },
  opts = {
    adapters = {
      -- RSpec
      ["neotest-rspec"] = {
        rspec_cmd = function()
          return vim.tbl_flatten({
            "docker",
            "compose",
            "run",
            "web",
            "bundle",
            "exec",
            "rspec",
          })
        end,
        transform_spec_path = function(path)
          local prefix = require("neotest-rspec").root(path)
          return string.sub(path, string.len(prefix) + 2, -1)
        end,
        results_path = "tmp/rspec.output",
      },
      -- Jest
      ["neotest-jest"] = {
        jestCommand = "npm test --",
        cwd = function(path)
          return vim.fn.getcwd()
        end,
      },
      -- Vitest
      ["neotest-vitest"] = {
        filter_dir = function(name, rel_path, root)
          return name ~= "node_modules"
        end,
      },
    },
  },
}
