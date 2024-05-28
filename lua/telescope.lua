-- Require necessary plugins
local wk = require("which-key")
local builtin = require('telescope.builtin')

-- Define your key mappings and their descriptions
wk.register({
  f = {
    name = "Telescope", -- Group name for 'f' prefix
    f = { builtin.find_files, "Find Files" },
    g = { builtin.live_grep, "Live Grep" },
    b = { builtin.buffers, "Buffers" },
    h = { builtin.help_tags, "Help Tags" },
  },
}, { prefix = "<leader>" })

-- You can also set up the mappings directly using vim.keymap.set, but with descriptions via which-key
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

