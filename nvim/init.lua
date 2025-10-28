vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

require("config.lazy")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Neo-tree keymaps
vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', { desc = "Toggle Neo-tree" })
vim.keymap.set('n', '<leader>r', ':Neotree reveal<CR>', { desc = "Reveal file in Neo-tree" })
vim.keymap.set('n', '<leader>n', ':Neotree focus<CR>', { desc = "Focus Neo-tree" })
vim.keymap.set('n', '<leader>ev', ':Neotree reveal toggle position=right<CR>', { desc = "Neo-tree right panel" })
vim.keymap.set('n', '<leader>es', ':Neotree reveal toggle position=left<CR>', { desc = "Neo-tree left panel" })

