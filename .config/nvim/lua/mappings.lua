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
map("t", "<S-X>", "<C-\\><C-n>", { noremap = true, desc = "go into term normal mode" })
-- undotree
map("n", "<leader>u", function()
  require("undotree").open {
    command = math.floor(vim.api.nvim_win_get_width(0) / 3) .. "vnew",
  }
end, { silent = true, desc = "Toggle undotree" })

-- all the trouble.nvim stuff
map("n", "<leader>px", ":Trouble diagnostics toggle<CR>", { silent = true, desc = "Toggle Diagnostics" })
map("n", "<leader>pX", ":Trouble diagnostics toggle filter.buf=0<CR>", { silent = true, desc = "Buffer Diagnostics" })
map("n", "<leader>pc", ":Trouble symbols toggle focus=false<CR>", { silent = true, desc = "Symbols (trouble)" })
map(
  "n",
  "<leader>pl",
  ":Trouble lsp toggle focus=false win.position=right<CR>",
  { silent = true, desc = "LSP definitions/references/ ..." }
)
map("n", "<leader>pL", ":Trouble loclist toggle<CR>", { silent = true, desc = "Location list (trouble)" })
map("n", "<leader>pq", ":Trouble qflist toggle<CR>", { silent = true, desc = "Quickfix List (trouble)" })

-- I use option for my WM, so I have to remap it
map({ "n", "t" }, "<F1>", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "terminal toggle floating term" })

map({ "n", "t" }, "<F2>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal toggleable horizontal term" })

-- toggleable
map({ "n", "t" }, "<F3>", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm", size = 0.5 }
end, { desc = "terminal toggleable vertical term" })

-- codeactions
map("n", "<leader>wc", ":lua vim.lsp.buf.code_action()<CR>", { silent = true, desc = "lsp code actions" })
