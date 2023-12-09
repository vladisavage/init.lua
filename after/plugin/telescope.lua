require('telescope').setup({
  defaults = {
    layout_config = {
        horizontal = {
            width = 0.98,
            height = 0.98,
            preview_width = 0.4,
        },
    },
  },
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', builtin.live_grep, {})
vim.keymap.set('n', '<C-g>', builtin.git_files, {})
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
