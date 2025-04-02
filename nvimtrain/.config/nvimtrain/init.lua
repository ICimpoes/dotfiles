print("reloaded config")
require("ic")
require("config.lazy")

vim.keymap.set("n", "<space>X", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Higligh on yank",
    group = vim.api.nvim_create_augroup("ic-highlight", { clear = true }),
    callback = function()
        vim.highlight.on_yank({ timeout = 100 })
    end
})
