-- Linenumbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enables all mouse interactions
vim.opt.mouse = 'a'

-- Search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- No linewrap
vim.opt.wrap = false

-- Tab rules
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Scrolloff
vim.opt.scrolloff=10

-- Cursorline and column
-- vim.opt.cursorline = true
-- vim.opt.cursorcolumn = true

-- Split
vim.opt.splitright = true

-- Colorscheme
vim.opt.termguicolors = true
vim.cmd('colorscheme gruvbox')

-- Lualine
require('lualine').setup({
  options = {
    theme = 'gruvbox',
    icons_enabled = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {},
    lualine_z = {'progress'}
  }
})

-- Lexplore
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 15

-- lspconfig
require'lspconfig'.pyright.setup{}

-- suda
vim.g.suda_smart_edit = 1

-- mason
require("mason").setup()

--Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortness: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.api.nvim_set_option('updatetime', 300) 

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error 
-- Show inlay_hints more frequently 
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
