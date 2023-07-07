-- Vim Settings
vim.opt.cmdheight = 2 -- more space in the neovim command line for displaying messages
vim.opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.relativenumber = true -- relative line numbers
vim.opt.wrap = true -- wrap lines
vim.opt.smarttab = true

--LVim Settings
lvim.transparent_window = true
lvim.colorscheme = "neogruvbox"

--Catppuccin setup
require("catppuccin").setup({
  flavour = "mocha", --latte,frappe,macchiato,mocha
  background = {
       light = "latte",
       dark = "mocha",
  },
  transparent_background = false,
  integrations = {
        cmp = true,
        nvimtree = true,
        telescope = true,
    },
})

--Install plugins
lvim.plugins = {
    { "catppuccin/nvim" },
    { "Almo7aya/neogruvbox.nvim" }
}
