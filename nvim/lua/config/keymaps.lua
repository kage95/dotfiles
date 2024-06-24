-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local disable_keymap = vim.api.nvim_del_keymap

keymap.set("n", "<Space>h", "^", { desc = "行頭に移動" })
keymap.set("n", "<Space>l", "$", { desc = "行末に移動" })
keymap.set("v", "v", "$h", { desc = "カーソル末まで選択" })

keymap.set("n", "sv", "<C-W>v", { desc = "画面を縦分割" })

-- esc
keymap.set("i", "jj", "<Esc>", { desc = "ESC" })

-- insertモードでカーソル移動できるように
keymap.set("i", "<C-n>", "<Down>", { silent = true })
keymap.set("i", "<C-b>", "<Left>", { silent = true })
keymap.set("i", "<C-p>", "<Up>", { silent = true })
keymap.set("i", "<C-f>", "<Right>", { silent = true })
keymap.set("i", "<C-a>", "<C-o>^", { silent = true })
keymap.set("i", "<C-e>", "<C-o>$", { silent = true })

keymap.set("i", ",", ",<Space>")

-- Terminal
keymap.set("n", "<Leader>ts", "<CMD>TermSelect<CR>", { desc = "Select Terminal List", silent = true })
keymap.set("n", "<Leader>tm", "<CMD>1ToggleTerm name=Main<CR>", { desc = "Main Terminal", silent = true })
keymap.set("n", "<Leader>tt", "<CMD>2TermExec name=Test<CR>", { desc = "Test Terminal", silent = true })
keymap.set("n", "<Leader>td", "<CMD>3ToggleTerm name=Debug<CR>", { desc = "Debug Terminal", silent = true })

-- Test
keymap.set("n", "<Leader>tl", "<CMD>TestNearest<CR>", { desc = "Test Nearest", silent = true })
keymap.set("n", "<Leader>tf", "<CMD>TestFile<CR>", { desc = "Test File", silent = true })

-- Buffer
keymap.set("n", "<C-n>", "<CMD>BufferLineCycleNext<CR>", { desc = "次のbufferへ" })
keymap.set("n", "<C-p>", "<CMD>BufferLineCyclePrev<CR>", { desc = "前のbufferへ" })
keymap.set("n", "<Leader>bs", "<CMD>BufferLinePick<CR>", { desc = "bufferを選択" })
keymap.set(
  "n",
  "<Leader>bS",
  "<CMD>BufferLineSortByDirectory<CR>",
  { desc = "ディレクトリでbufferを並び替え" }
)

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "上の行と入れ替え" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "下の行と入れ替え" })

-- デフォルトのterminalを開くコマンドを無効
disable_keymap("n", "<leader>ft")
disable_keymap("n", "<leader>fT")

disable_keymap("t", "<C-h>")
disable_keymap("t", "<C-j>")
disable_keymap("t", "<C-k>")
disable_keymap("t", "<C-l>")
