local opts = {noremap = true, silent = true}

local keymap = vim.api.nvim_set_keymap

--for neoTree
keymap("n", "<C-d>", ":NvimTreeToggle<CR>", opts)

--for Telescope
keymap("n", "<C-s>", ":Telescope find_files<CR>", opts)

--add atabe
keymap("n", "<C-x>", ":tabe ", opts)
