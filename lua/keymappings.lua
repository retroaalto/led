vim.keymap.set('n', '<leader>W', ":lua require('whitespace-nvim').trim()<CR>", { desc = 'Trim whitespaces' })
vim.keymap.set('n', '<leader><space>', "<C-^>", { desc = 'Edit alternate file' })
