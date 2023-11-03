augroup solidity
  autocmd! * <buffer>

  au BufNewFile,BufRead *.sol setf solidity
  " Improve comment syntax highlighting
  " If fromstart is too slow, see :help :syn-sync-ccomment
  au BufReadPost,BufNewFile *.sol syntax sync fromstart
augroup END
