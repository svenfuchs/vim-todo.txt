map <space> :call system('todo toggle -f ' . expand('%:p') . ' -- ' . shellescape(getline('.'))) <CR>:e!<CR>
map S :call system('todo push -f ' . expand('%:p')) <CR>:echo 'Ok.'<CR>
map A :call system('todo archive -f ' . expand('%:p')) <CR>:echo 'Ok.'<CR>
map Y :let @*=system('todo list -f ' . expand('%:p') . ' --since yesterday --status done')<CR>:new <CR>VGP
