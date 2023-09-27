-- nvim tree setup empty setup using defaults
require("nvim-tree").setup({
    diagnostics = {
        enable = true,
    },
    update_focused_file = {
        enable =  true,
    },
    view = {
        width = 35,
    },
    git = {
        ignore = false,
    },
    filters = {
        dotfiles = false,
    },
    modified = {
        enable = true,
        show_on_dirs = true,
    },
    renderer = {
        icons = {
            show = {
                git = true,
                folder = true,
                file = true,
                folder_arrow = false,
            },
            glyphs = {
                default = '',
                git = {
                    unstaged = '~',
                    staged = '+',
                    unmerged = '!',
                    renamed = '≈',
                    untracked = '?',
                    deleted = '-',
                },
            },
        },
        indent_markers = {
            enable = true,
        },
    },
})

vim.keymap.set('n', '<A-1>', '<CMD>NvimTreeFindFileToggle<CR>')
