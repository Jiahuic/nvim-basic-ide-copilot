require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.autocommands"
--require "user.colorscheme"
require "user.cmp"
require "user.telescope"
-- require "user.treesitter"
require "user.autopairs"
require "user.comment"
-- require "user.gitsigns"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
require "user.project"
require "user.impatient"
require "user.illuminate"
require "user.indentline"
require "user.alpha"
-- require "user.lsp"
require "user.dap"
require "user.copilot"

-- Wrap the function and autocmd inside a lua block
vim.cmd([[
augroup DisableWrapForLatex
  autocmd!
  autocmd BufEnter * lua if vim.bo.filetype == 'tex' then vim.opt.wrap = true end
augroup END
]])

-- Create an autocmd to restore cursor position when opening a file
vim.cmd([[
augroup RestoreCursorPosition
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END
]])

-- I didn't includes the above code to options.lua because I don't know how to.
-- Here is one attempt I made: (failed)
-- -- Function to disable line wrapping for LaTeX files
-- local function disable_wrap_for_latex()
--   if vim.bo.filetype == 'tex' then
--     vim.opt.wrap = false
--   end
-- end
--
-- -- Create an autocmd to call the function on opening a buffer
-- vim.cmd('autocmd BufEnter * lua disable_wrap_for_latex()')
