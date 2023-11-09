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

map("x", "<leader>p", [["_dP]])
map({"n", "v"}, "<leader>d", [["_d]])
map({"n", "v"}, "<leader>d", [["_d]])
-- map({"n", "v"}, "<leader>y", [["+y]])
-- map("n", "<leader>Y", [["+Y]])

-- Move between buffers
map('n', '<leader>]', '<CMD>bn<CR>')
map('n', '<leader>[', '<CMD>bp<CR>')

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

map('n', '<A-t>', '<CMD>split | resize 15 | terminal<CR>i')
map('t', '<A-t>', '<C-\\><C-n><CMD>:q<CR>')

map({'n', 't'}, '<C-Up>', '<CMD>resize +2<CR>')
map({'n', 't'}, '<C-Down>', '<CMD>resize -2<CR>')
map({'n', 't'}, '<C-Right>', '<CMD>vertical resize +2<CR>')
map({'n', 't'}, '<C-Left>', '<CMD>vertical resize -2<CR>')

-- map('n', '<A-j>', '<CMD>wincmd j<CR>')
-- map('n', '<A-h>', '<CMD>wincmd h<CR>')
-- map('n', '<A-k>', '<CMD>wincmd k<CR>')
-- map('n', '<A-l>', '<CMD>wincmd l<CR>')
