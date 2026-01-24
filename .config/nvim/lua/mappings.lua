require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>") why???
-- transparency
map(
  "n",
  "<leader>tt",
  ":lua require('base46').toggle_transparency()<CR>",
  { noremap = true, silent = true, desc = "Toggle Background Transparency" }
)
map("n", "<leader>cd", ":cd %:p:h<CR>", { desc = "Change directory into current file directory" })
map("n", "<C-l>", ":cd ..<CR>", { desc = "Go one directory level down" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- exit out of terminals
map("t", "<Esc>", "<C-\\><C-n>", { noremap = true, desc = "go into term normal mode" })
