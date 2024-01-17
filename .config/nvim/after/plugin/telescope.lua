-- Telescope setup
require('telescope').setup({
    defaults = {
        vimgrep_arguments = {
            {
                "rg",
                "--color=never",
                "--no-heading",
                "--with-filename",
                "--line-number",
                "--column",
                "--smart-case",
                "--hidden"
            }
        },
        file_ignore_patterns = { ".git/" },
        hidden = true,
        pickers = {
            oldfiles = {
                cwd_only = true,
            }
        }
    }
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>faf', '<CMD>:Telescope find_files hidden=true<CR>', {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fl', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fal', '<CMD>:Telescope live_grep hidden=true<CR>', {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
vim.keymap.set('n', '<leader>fas', '<CMD>:Telescope grep_string hidden=true<CR>', {})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
-- vim.keymap.set('n', '<leader>fr', builtin.registers, {})
vim.keymap.set('n', '<leader>faa', '<CMD>:Telescope<CR>', {})
vim.keymap.set('n', '<leader>fr', builtin.resume, {})
vim.keymap.set('n', '<leader>Fl', function()
    vim.ui.input({ prompt = "Glob: ", completion = "file", default = "**/*." }, function(glob_pattern)
        require('telescope.builtin').live_grep({
            vimgrep_arguments = {
                "rg",
                "--color=never",
                "--no-heading",
                "--with-filename",
                "--line-number",
                "--column",
                "--smart-case",
                "--glob=" .. (glob_pattern or ""),
            }
        })
    end)
end, {})
pcall(require('telescope').load_extension, 'fzf')
