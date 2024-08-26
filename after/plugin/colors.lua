require("tokyonight").setup({
    style = "night",  -- Ensure you're using the 'night' style
    on_colors = function(colors)
        colors.bg = "#171717"  -- Replace with your preferred darker color
    end,
    on_highlights = function(hl, c)
        hl.Normal = { bg = c.bg }
        hl.NormalFloat = { bg = c.bg }
    end,
})

-- Apply the theme
vim.cmd[[colorscheme tokyonight]]

