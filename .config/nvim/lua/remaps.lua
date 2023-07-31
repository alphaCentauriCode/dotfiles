local keymap = vim.keymap.set
vim.g.mapleader = ' '

--=/// General \\\=--

keymap('i', '<C-i>', '<Esc>' )
keymap('n', 'i', '<Insert>' )

keymap('n', '<leader>ef', ':Ex')

keymap('n', 'r', ':redo<cr>')

-- moving lines around
keymap('n', '<A-j>', ':m .+1<cr>==')
keymap('n', '<A-k>', ':m .-2<cr>==')

-- telescope
keymap('n', '<leader>ff', ':Telescope find_files<cr>')
keymap('n', '<leader>fp', ':Telescope live_grep<cr>')
