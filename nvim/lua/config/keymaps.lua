-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

keymap.set("n", "<Space>a", "^", { desc = "行頭に移動" })
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
keymap.set("i", "<C-g><C-u>", "<esc>gUiwgi", { desc = "全て大文字に" })
keymap.set("i", "<C-g><C-l>", "<esc>guiwgi", { desc = "全て小文字に" })
keymap.set("i", "<C-g><C-k>", "<esc>bgUlgi", { desc = "先頭だけ大文字に" })
keymap.set("n", "<C-g><C-u>", "gUiw", { desc = "全て大文字に" })
keymap.set("n", "<C-g><C-l>", "guiw", { desc = "全て小文字に" })
keymap.set("n", "<C-g><C-k>", "bgUl", { desc = "先頭だけ大文字に" })

-- Buffer
-- keymap.set("n", "<C-n>", "<CMD>BufferLineCycleNext<CR>", { desc = "BufferLineCycleNext" })
-- keymap.set("n", "<C-p>", "<CMD>BufferLineCyclePrev<CR>", { desc = "BufferLineCyclePrev" })

keymap.set("n", "<Leader>cp", function()
  vim.fn.setreg("*", vim.fn.expand("%"))
end, { desc = "copy current file path" })
