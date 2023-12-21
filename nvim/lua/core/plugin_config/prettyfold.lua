require('pretty-fold').setup{
   keep_indentation = false,
   fill_char = '_',
   sections = {
      left = {
         function() return string.rep('*', vim.v.foldlevel) end, ' ', 'content', ''
      },
      right = {
         ' ', 'number_of_folded_lines', ': ', 'percentage', ' ',
      }
   }
}
