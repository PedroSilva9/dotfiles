require 'luk.set'
require 'luk.remap'
require 'luk.lazy_init'

vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
  pattern = '*',
  command = [[%s/\s\+$//e]],
})
