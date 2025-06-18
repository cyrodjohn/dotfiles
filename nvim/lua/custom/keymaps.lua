-- Easy insertion of a trailing ; or , from insert mode.
vim.keymap.set('i', ';;', '<Esc>A;<Esc>')
vim.keymap.set('i', ',,', '<Esc>A,<Esc>')

-- Paste replace visual selection without copying it.
vim.keymap.set('v', 'p', '"_dP')

-- Disable annoying command line thing.
vim.keymap.set('n', 'q:', ':q<CR>')

-- Add jj and jk to ESC
-- From DevOps Toolbox
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = false })
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = false })
