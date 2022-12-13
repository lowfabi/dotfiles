-- =============================================================================
-- WHICHKEY CONFIG
-- =============================================================================
  local wk = require("which-key")
  wk.register({
    f = {
      name = "find",
      f = "file",
      b = "buffer"
    },
    o = {
      name = "open",
      f = "file explorer",
      t = "terminal"
    },
    h = {
      name = "hop",
      l = "line",
      w = "word"
    },
    t = "terminal"
  }, { prefix = "<leader>" })

-- =============================================================================
-- MAPPINGS
-- =============================================================================

-- Mapping the keymap
vim.g.mapleader = ' '

-- Coppy and pasting
vim.keymap.set({'n', 'x'}, 'cp', '"+y')
vim.keymap.set({'n', 'x'}, 'cv', '"+p')

-- Toggle Lexplore
vim.keymap.set('n', '<leader>of', '<cmd>Lexplore!<cr>')

-- FloaTerm configuration
vim.keymap.set('n', "<leader>ot", ":FloatermNew --name=myfloat --height=0.8 --width=0.7 --autoclose=2 fish <CR> ")
vim.keymap.set('n', "<leader>t", ":FloatermToggle myfloat<CR>")
vim.keymap.set('t', "<Esc>", "<C-\\><C-n>:q<CR>")

-- Hop
local hop = require('hop')
local directions = require('hop.hint').HintDirection
vim.keymap.set('', 'f', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, {remap=true})
vim.keymap.set('', 'F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, {remap=true})
vim.keymap.set('', 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, {remap=true})
vim.keymap.set('', 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, {remap=true})

vim.keymap.set('n', '<leader>hw', ':HopWord<cr>')
vim.keymap.set('n', '<leader>hl', ':HopLine<cr>')

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
