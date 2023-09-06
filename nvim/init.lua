require ("riv.remap")
require ("riv.packer")

require("catppuccin").setup({
    integrations = {
        treesitter = true,
        harpoon = true,
    }
})

require('lualine').setup {
    options = {
        theme = "catppuccin"
        -- ... the rest of your lualine config
    }
}
