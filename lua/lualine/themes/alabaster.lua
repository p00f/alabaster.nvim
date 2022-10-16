local colors
if vim.o.background == "dark" then
    colors = {
        color1 = "#162022",
        color2 = "#cd974b",
        color3 = "#cecece",
        color4 = "#9F9F9F",
        color5 = "#333333",
        color6 = "#cc8bc9",
    }
else
    colors = {
        color1 = "#c9c9c9",
        color2 = "#cb9000",
        color3 = "#222222",
        color4 = "#666666",
        color5 = "#aaaaaa",
        color6 = "#7a3e9d",
    }
end

return {
    replace = {
        a = { fg = colors.color1, bg = colors.color2, gui = "bold" },
        b = { fg = colors.color3, bg = colors.color1 },
    },
    inactive = {
        a = { fg = colors.color4, bg = colors.color1, gui = "bold" },
        b = { fg = colors.color4, bg = colors.color1 },
        c = { fg = colors.color4, bg = colors.color1 },
    },
    normal = {
        a = { fg = colors.color3, bg = colors.color5, gui = "bold" },
        b = { fg = colors.color3, bg = colors.color1 },
        c = { fg = colors.color3, bg = colors.color1 },
    },
    visual = {
        a = { fg = colors.color1, bg = colors.color6, gui = "bold" },
        b = { fg = colors.color3, bg = colors.color1 },
    },
    insert = {
        a = { fg = colors.color1, bg = colors.color3, gui = "bold" },
        b = { fg = colors.color3, bg = colors.color1 },
    },
}
