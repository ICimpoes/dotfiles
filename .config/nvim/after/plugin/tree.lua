-- nvim tree setup empty setup using defaults
require("nvim-tree").setup({
	filters = {
		dotfiles = false,
	},
	modified = {
		enable = true,
		show_on_dirs = true,
	},
})

vim.keymap.set('n', '<leader>1', '<CMD>NvimTreeToggle<CR>')
vim.keymap.set('n', '<A-1>', '<CMD>NvimTreeFindFile<CR>')
