require('ic.remap')
require('ic.set')
require('ic.lazy')

local augroup = vim.api.nvim_create_augroup

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 100,
        })
    end,
})

vim.api.nvim_create_user_command('Gla', 'Git log --oneline --decorate --graph --all', {bang = true})
vim.api.nvim_create_user_command('BD', '%bd|e#', {})
