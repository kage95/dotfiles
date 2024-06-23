return {
  "vim-test/vim-test",
  config = function()
    -- Test Terminalで実行させる関数
    local function CustomStrategy(cmd)
      local term_cmd = '2TermExec name=Test cmd="' .. cmd .. '"'
      vim.cmd(term_cmd)
    end
    vim.g["test#custom_strategies"] = { custom_strategy = CustomStrategy }
    vim.g["test#strategy"] = "custom_strategy"

    -- RSpec
    vim.g["test#ruby#rspec#executable"] = "docker compose run web bundle exec rspec"
    -- Jest
    vim.g["test#javascript#jest#executable"] = "npm run test"
  end,
}
