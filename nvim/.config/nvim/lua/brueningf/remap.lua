vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)

-- slide line
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- center page
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- center next
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste from clipb
vim.keymap.set("n", "<leader>p", "\"_dP")

-- execute it
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- give me work
vim.keymap.set("n","<C-f>", "<cmd>!tmux neww sessionizer<CR>", { silent = true })
