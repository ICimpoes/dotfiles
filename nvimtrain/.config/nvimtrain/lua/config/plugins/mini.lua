return {
    {
        'echasnovski/mini.nvim',
        version = '*',
        enabled = true,
        config = function()
            local statusline = require("mini.statusline")
            statusline.setup({ user_icons = true })
        end
    },
}
