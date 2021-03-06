local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- NERDTree
keymap('n', '<C-t>', ':NERDTreeToggle<CR>', opts)
keymap('n', '<C-f>', ':NERDTreeFind<CR>', opts)

-- Buffers
keymap('n', '<C-p>', ':BufferPrevious<CR>', opts)
keymap('n', '<C-n>', ':BufferNext<CR>', opts)
keymap('n', '<leader>P', ':BufferMovePrevious<CR>', opts)
keymap('n', '<leader>N', ':BufferMoveNext<CR>', opts)
keymap('n', '<leader>x', ':BufferClose<CR>', opts)

-- Telescope
keymap('n', '<leader>f', ':Telescope find_files<CR>', opts)
keymap('n', '<leader>g', ':Telescope live_grep<CR>', opts)
keymap('n', '<leader>b', ':Telescope buffers<CR>', opts)

-- Resize
keymap("n", "<leader>_", ":resize -2<CR>", opts)
keymap("n", "<leader>+", ":resize +2<CR>", opts)
keymap("n", "<leader>{", ":vertical resize -2<CR>", opts)
keymap("n", "<leader>}", ":vertical resize +2<CR>", opts)
