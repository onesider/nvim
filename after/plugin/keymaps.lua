-- local keymap = vim.api.nvim_set_keymap
local keymap = vim.keymap.set
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

vim.g.mapleader = " "

-- Plugin Hot Key
vim.keymap.set("n", "<F2>", ":NvimTreeToggle<CR>", { noremap = false, silent = true })
vim.keymap.set("n", "<F3>", ":MaximizerToggle<CR>", { noremap = false, silent = true })
vim.keymap.set("n", "<F4>", ":TroubleToggle<CR>", { noremap = false, silent = true })
-- vim.keymap.set('n', '<F7>', ':SrcExplToggle<CR>', { noremap = false, silent = true })

-- keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")
-- keymap({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>")
-- keymap("n", "gr", "<cmd>Lspsaga rename<CR>")
-- keymap("n","gd", "<cmd>Lspsaga goto_definition<CR>")

-- Cancel search highlighting with ESC
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_opts)

-- Better escape using jk in insert and terminal mode
keymap("i", "jk", "<ESC>", default_opts)
keymap("t", "jk", "<C-\\><C-n>", default_opts)

-- keymap("n", "<C-k>", ":lua require('goto-preview').goto_preview_definition()<CR>", default_opts)

-- swich window
vim.keymap.set("n", "zh", "<C-w>h")
vim.keymap.set("n", "zl", "<C-w>l")
vim.keymap.set("n", "zj", "<C-w>j")
vim.keymap.set("n", "zk", "<C-w>k")

-- This is going to get me cancelled
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Switch buffe
vim.keymap.set("n", "<S-h>", ":bp<CR>")
vim.keymap.set("n", "<S-l>", ":bn<CR>")
vim.keymap.set("n", "<leader>q", ":bd<CR>")

-- Resizing panes
vim.keymap.set("n", "<S-Left>", ":vertical resize -1<CR>")
vim.keymap.set("n", "<S-Right>", ":vertical resize +1<CR>")
vim.keymap.set("n", "<S-Up>", ":resize +1<CR>")
vim.keymap.set("n", "<S-Down>", ":resize -1<CR>")

-- Switch buffe
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Center search results
keymap("n", "n", "nzzzv", default_opts)
keymap("n", "N", "Nzzzv", default_opts)
keymap("n", "g,", "g,zvzz", default_opts)
keymap("n", "g;", "g;zvzz", default_opts)

-- Scrolling
keymap("n", "<C-d>", "<C-d>zz", default_opts)
keymap("n", "<C-u>", "<C-u>zz", default_opts)

-- Visual line wraps
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", expr_opts)
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", expr_opts)

-- Better indent
keymap("v", "<", "<gv", default_opts)
keymap("v", ">", ">gv", default_opts)

-- Paste over currently selected text without yanking it
keymap("v", "p", '"_dP', default_opts)

-- Move selected line / block of text in visual mode
keymap("x", "K", ":move '<-2<CR>gv=gv", default_opts)
keymap("x", "J", ":move '>+1<CR>gv=gv", default_opts)

-- focus.nvim
-- keymap("n", "<C-w>z", "<Cmd>FocusMaxOrEqual<CR>", default_opts)
