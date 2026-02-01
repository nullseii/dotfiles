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
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- exit out of terminals
map("t", "<Esc>", "<C-\\><C-n>", { noremap = true, desc = "go into term normal mode" })
-- undotree
map("n", "<leader>u", ":lua require('undotree').toggle()<CR>", { silent = true, desc = "Toggle undotree" })

-- all the trouble.nvim stuff
map("n", "<leader>px", ":Trouble diagnostics toggle<CR>", { silent = true, desc = "Toggle Diagnostics" })
map("n", "<leader>pX", ":Trouble diagnostics toggle filter.buf=0<CR>", { silent = true, desc = "Buffer) Diagnostics" })
map("n", "<leader>pc", ":Trouble symbols toggle focus=false<CR>", { silent = true, desc = "Symbols (trouble)" })
map(
  "n",
  "<leader>pl",
  ":Trouble lsp toggle focus=false win.position=right<CR>",
  { silent = true, desc = "LSP definitions/references/ ..." }
)
map("n", "<leader>pL", ":Trouble loclist toggle<CR>", { silent = true, desc = "Location list (trouble)" })
map("n", "<leader>pq", ":Trouble qflist toggle<CR>", { silent = true, desc = "Quickfix List (trouble)" })
