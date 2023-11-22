augroup solidity
  autocmd! * <buffer>

  au BufNewFile,BufRead *.sol setf solidity
  " Improve comment syntax highlighting
  " sync fromstart can be too slow for large files
  " au BufReadPost,BufNewFile *.sol syntax sync fromstart
  au BufReadPost,BufNewFile *.sol syntax sync ccomment
augroup END
