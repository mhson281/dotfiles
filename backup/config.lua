-- Vim Settings
vim.opt.syntax            = 'enable'
vim.opt.hidden            = true
vim.opt.splitbelow        = true
vim.opt.splitright        = true
vim.opt.smarttab          = true
vim.opt.expandtab         = true
vim.opt.smartindent       = true
vim.opt.cindent           = true
vim.opt_global.laststatus = 3
vim.opt.termguicolors     = true
vim.opt.backup            = false
vim.opt.writebackup       = false
vim.opt.wrap              = false
vim.opt.pumheight         = 10
vim.opt.updatetime        = 300
vim.opt.timeoutlen        = 500
vim.opt.conceallevel      = 0
vim.opt.tabstop           = 4
vim.opt.shiftwidth        = 4
vim.opt.cmdheight         = 1
vim.opt.number            = true
vim.opt.relativenumber    = true
vim.opt.smartindent       = true
vim.opt.ignorecase        = true
vim.opt.smartcase         = true
vim.opt.cursorline        = true
vim.opt.title             = true
vim.opt.hlsearch          = false
vim.opt.clipboard         = "unnamedplus"

--Lvim General settings
--
lvim.log.level = "warn"
lvim.format_on_save.enabled = true
lvim.colorscheme = "lunar"
lvim.leader = "space"
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.builtin.treesitter.highlight.enable = true
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
lvim.transparent_window = true
lvim.colorscheme = "catppuccin"

-- Indent Blankline Setup
vim.opt.list = true
vim.opt.listchars:append "space:⋅"

require("indent_blankline").setup {
    show_end_of_line = true,
    space_char_blankline = " ",
}

-- Catppuccin Setup
vim.g.catppuccin_flavour = "mocha"
local colors = require("catppuccin.palettes").get_palette()
require("catppuccin").setup {
    custom_highlights = {
        Comment = { fg = colors.flamingo },
        TSConstBuiltin = { fg = colors.peach, style = {} },
        TSConstant = { fg = colors.sky },
        TSComment = { fg = colors.surface2, style = { "italic" } }
    },
}


-- Telescope default keymap

local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
    -- for input mode
    i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,
    },
    -- for normal mode
    n = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
    },
}


-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
    "bash",
    "c",
    "javascript",
    "json",
    "lua",
    "python",
    "typescript",
    "tsx",
    "css",
    "rust",
    "java",
    "yaml",
}

lvim.plugins = {
    { "lunarvim/colorschemes" },
    { "mfussenegger/nvim-jdtls" },
    { "catppuccin/nvim" },
    { "lukas-reineke/indent-blankline.nvim" },
}
