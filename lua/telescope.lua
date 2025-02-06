local telescope = require('telescope.builtin')

vim.keymap.set('n', '<space>fd', telescope.find_files)
