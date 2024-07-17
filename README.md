# BQN Formatter (bf)

Formats BQN code into two separate columns for code and comments

Installation for vim (assumes bf installed in `$PATH`):
```vim
function! FormatBQN()
  let l:content = join(getbufline('%', 1, '$'), "\n")
  let l:output = system('bf', l:content)
  call setbufline('%', 1, split(l:output, "\n"))
endfunction

" Autocmd to trigger function before saving buffer for .bqn files
"autocmd BufWritePre *.bqn call FormatBQN()
command! FormatBQN call FormatBQN()
command! BF call FormatBQN()
```
