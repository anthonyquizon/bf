# BQN Formatter (bf)

Formats BQN code into two separate columns for code and comments

Before:
<img width="707" alt="Screenshot 2024-07-17 at 12 14 51 pm" src="https://github.com/user-attachments/assets/ed1ef835-cace-4b81-b609-192972b423c2">

After:
<img width="939" alt="Screenshot 2024-07-17 at 12 15 09 pm" src="https://github.com/user-attachments/assets/593c06bf-1a90-4f0b-9089-ebceb29f3d14">

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
