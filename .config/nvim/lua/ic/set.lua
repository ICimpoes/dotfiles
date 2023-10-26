local o = vim.opt

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true

o.smartindent = true

o.number = true
o.numberwidth = 5
o.relativenumber = true
o.signcolumn = 'yes'

-- leave 8 lines when scrolling
o.scrolloff = 8

o.listchars = {
    eol = '⤶',
}
o.list = true

o.cursorline = true
o.termguicolors = true

-- Decrease update time
o.updatetime = 40

-- Set completeopt to have a better completion experience
o.completeopt = 'menuone,noselect'

-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = 'unnamedplus'

-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true
-- Set highlight on search
o.hlsearch = false
o.incsearch = true

-- Undo and backup options
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false
-- o.backupdir = '/tmp/'
-- o.directory = '/tmp/'
o.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Remember 50 items in commandline history
o.history = 50

-- Better buffer splitting
o.splitright = true
o.splitbelow = true

o.colorcolumn = "80"

o.wrap = false
