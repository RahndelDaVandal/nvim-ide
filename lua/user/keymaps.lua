local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   command_mode = "c",
--   term_mode = "t",

-- Normal --
-- Better window navigation
-- keymap("n", "<C-h>", "<C-w>h", opts)
-- keymap("n", "<C-j>", "<C-w>j", opts)
-- keymap("n", "<C-k>", "<C-w>k", opts)
-- keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Insert blank lines without entering insert mode
keymap("n", "<leader>o", "o<Esc>0\"_D", opts)
keymap("n", "<leader>O", "O<Esc>0\"_D", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '>-2<CR>gv=gv")
-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
-- Moved moving the lines up and down to visual line mode
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Plugins --

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment
-- keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
-- keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')

-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

-- My Keymaps for Telescope
-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<leader>F", "<cmd>Telescope live_grep<cr>", opts)

-- Harpoon Keymaps
-- toggle menu
keymap("n", "<C-e>", ':lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)
-- add file to harpoon
keymap("n", "<leader>a", ':lua require("harpoon.mark").add_file()<CR>', opts)
-- switch to file
keymap("n", "<C-h>", ':lua require("harpoon.ui").nav_file(1)<CR>', opts)
keymap("n", "<C-j>", ':lua require("harpoon.ui").nav_file(2)<CR>', opts)
keymap("n", "<C-k>", ':lua require("harpoon.ui").nav_file(3)<CR>', opts)
keymap("n", "<C-l>", ':lua require("harpoon.ui").nav_file(4)<CR>', opts)

-- My Custom Keymaps
keymap("n", "<leader>w", ":w<cr>", opts)
keymap("n", "<leader>q", ":q<cr>", opts)
keymap("n", "<leader>qq", ":q!<cr>", opts)
-- keymap("n", "<leader>t", ":ToggleTerm<CR>", opts)
-- keymap("t", "<leader>t", "<C-\\>", opts) -- Not working at the moment
keymap("n", "<leader>z", "z.", opts)
keymap("n","<C-u>", "<C-u>zz", opts)
keymap("n","<C-d>", "<C-d>zz", opts)

-- keymap('n', "<leader>t", ":FloatermNew --name=myfloat --height=0.8 --width=0.7 --autoclose=2 fish <CR> ")
keymap('n', "<leader>t", ":FloatermToggle myfloat<CR>")
keymap('t', "<Esc>", "<C-\\><C-n>:q<CR>")
