local opts      = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

-- Set leader key
keymap("", "<,>", "<Nop>", opts)
vim.g.mapleader      = ","
vim.g.maplocalleader = ","

-- Modes
--   normal_mode       = "n",
--   insert_mode       = "i",
--   visual_mode       = "v",
--   visual_block_mode = "x",
--   term_mode         = "t",
--   command_mode      = "c"

-- Normal
-- Window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-q>", "<C-w>q", opts)

-- Resize with arrows
keymap("n", "<C-Up>"   , ":resize +2<CR>"         , opts)
keymap("n", "<C-Down>" , ":resize -2<CR>"         , opts)
keymap("n", "<C-Left>" , ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p"    , '"_dP'        , opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J"    , ":move '>+1<CR>gv-gv", opts)
keymap("x", "K"    , ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- nvim-tree
keymap("n", "<F1>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<F2>", ":NvimTreeFocus<CR>" , opts)

-- barbar
keymap("n", "<A-h>" , ":BufferPrevious<CR>"            , opts)
keymap("n", "<A-l>" , ":BufferNext<CR>"                , opts)
keymap("n", "<A-q>" , ":BufferClose<CR>"               , opts)
keymap("n", "<A-c>l", ":BufferCloseBuffersRight<CR>"   , opts)
keymap("n", "<A-c>h", ":BufferCloseBuffersLeft<CR>"    , opts)
keymap("n", "<A-c>a", ":BufferCloseAllButCurrent<CR>"  , opts)

-- tagbar
keymap("n", "<F8>", ":TagbarToggle<CR>", opts)

-- ctrl space
vim.g.CtrlSpaceDefaultMappingKey = "<C-space> "

-- ctags
keymap("n", "<C-[>", "<C-t>", opts)