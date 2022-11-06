local colorscheme = "catppuccin"
local colors = require("catppuccin.palettes").get_palette()

require("catppuccin").setup {
    flavour = "frappe",
    transparent_background = false,
    custom_highlights = {
        Comment = { fg = colors.flamingo },
        TSConstBuiltin = { fg = colors.peach, style = {} },
        TSConstant = { fg = colors.sky },
        TSComment = { fg = colors.surface2, style = { "italic" } }
    }, indent_blankline = {
        enabled = true,
        colored_indent_levels = false,
    }, integrations = {
        cmp = true,
        nvimtree = true,
        telescope = true,
        treesitter = true,
    },
}

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
