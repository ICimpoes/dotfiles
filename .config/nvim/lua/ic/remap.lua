vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keybinds
local function map(m, k, v,  o)
    o = o or {}
    o.silent = true
    vim.keymap.set(m, k, v, { silent = true })
end

map({'n', 'v'}, '<leader>', '<Nop>')

map('n', '<leader><F5>', vim.cmd.UndotreeToggle)

map('t', '<Esc>', '<C-\\><C-n>', { desc = 'Escape from terminal mode' })


-- Move between buffers
map('n', '<C-]>', '<CMD>bn<CR>')
map('n', '<C-[>', '<CMD>bp<CR>')

-- Move line up and down in NORMAL and VISUAL modes
-- Reference: https://vim.fandom.com/wiki/Moving_lines_up_or_down
map('n', '<C-j>', '<CMD>move .+1<CR>')
map('n', '<C-k>', '<CMD>move .-2<CR>')
map('x', '<C-j>', ":move '>+1<CR>gv=gv")
map('x', '<C-k>', ":move '<-2<CR>gv=gv")

map({'n', 'i'}, '<C-q>', '<CMD>q<CR>')
map('n', '<Esc>', '<Nop>')

map("n", "J", "mzJ`z")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")


-- Diagnostic keymaps
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
map('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
map('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
