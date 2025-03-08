vim.keymap.set("n", "<leader>W", ":lua require('whitespace-nvim').trim()<CR>", { desc = "Trim whitespaces" })
vim.keymap.set("n", "<leader><space>", "<C-^>", { desc = "Edit alternate file" })

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "Telescope help tags" })
