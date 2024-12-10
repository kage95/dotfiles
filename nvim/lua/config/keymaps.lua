-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

keymap.set("n", "<leader>e", "<CMD>Telescope file_browser<CR>")

keymap.set("n", "<Space>h", "^", { desc = "行頭に移動" })
keymap.set("n", "<Space>l", "$", { desc = "行末に移動" })
keymap.set("v", "v", "$h", { desc = "カーソル末まで選択" })

keymap.set("n", "sv", "<C-W>v", { desc = "画面を縦分割" })

keymap.set("x", "y", "mzy`z", { desc = "カーソル位置を保持してyank" })
keymap.set("n", "zm", "za", { desc = "foldをトグル" })

-- pとPを入れ替え
keymap.set("x", "p", "P")
keymap.set("x", "P", "p")
keymap.set("n", "p", "]p`]")
keymap.set("n", "P", "]P`]")

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

keymap.set("i", "<C-g><C-u>", "<esc>gUiwgi")
keymap.set("i", "<C-g><C-l>", "<esc>guiwgi")
keymap.set("i", "<C-g><C-k>", "<esc>bgUlgi")

-- Buffer
keymap.set("n", "<C-n>", "<CMD>BufferLineCycleNext<CR>", { desc = "BufferLineCycleNext" })
keymap.set("n", "<C-p>", "<CMD>BufferLineCyclePrev<CR>", { desc = "BufferLineCyclePrev" })
keymap.set("n", "<Leader>bs", "<CMD>BufferLinePick<CR>", { desc = "BufferLinePick" })
keymap.set("n", "<leader>dd", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })
keymap.set(
  "n",
  "<Leader>bS",
  "<CMD>BufferLineSortByDirectory<CR>",
  { desc = "ディレクトリでbufferを並び替え" }
)

keymap.set("n", "<Leader>cp", function()
  vim.fn.setreg("*", vim.fn.expand("%"))
end, { desc = "copy current file path" })
