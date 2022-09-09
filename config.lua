lvim.log.level = "warn"
lvim.format_on_save = true
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.colorscheme = "catppuccin"
lvim.transparent_window = true

local opt                 = vim.opt
opt.syntax                = 'enable'
opt.hidden                = true
opt.splitbelow            = true
opt.splitright            = true
opt.smarttab              = true
opt.expandtab             = true
opt.smartindent           = true
opt.autoindent            = true
vim.opt_global.laststatus = 3
opt.termguicolors         = true

opt.backup = false
opt.writebackup = false
opt.wrap = false

opt.pumheight       = 10
opt.updatetime      = 300
opt.timeoutlen      = 500
opt.conceallevel    = 0
opt.tabstop         = 2
opt.shiftwidth      = 2
opt.cmdheight       = 1
opt.number          = true
opt.relativenumber  = true
vim.opt.smartindent = true
opt.ignorecase      = true
opt.smartcase       = true
opt.cursorline      = true
opt.title           = true
opt.hlsearch        = false

vim.api.nvim_set_option("clipboard", "unnamed")
vim.opt.list = true
opt.ruler = false
opt.showcmd = false
opt.showmode = false
vim.o.background = 'dark'
opt.mouse = 'a'
vim.opt.listchars:append "space:⋅"

require("indent_blankline").setup {
  space_char_blankline = " ",
  show_current_context = true,
  show_current_context_start = true,
}

vim.g.catppuccin_flavour = "frappe"
local colors = require("catppuccin.palettes").get_palette()
require("catppuccin").setup {
  custom_highlights = {
    Comment = { fg = colors.flamingo },
    TSConstBuiltin = { fg = colors.peach, style = {} },
    TSConstant = { fg = colors.sky },
    TSComment = { fg = colors.surface2, style = { "italic" } }
  },
}

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "css",
  "rust",
  "java",
  "yaml",
  "go",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true
lvim.plugins = {
  { "lunarvim/colorschemes" },
  { "folke/tokyonight.nvim" },
  { "mfussenegger/nvim-jdtls" },
  { "rmehri01/onenord.nvim" },
  { "luisiacc/gruvbox-baby" },
  { "catppuccin/nvim" },
  { "lukas-reineke/indent-blankline.nvim" },
}
