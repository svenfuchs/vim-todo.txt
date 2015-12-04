map <space> :w!<CR>:echo system('todo toggle -f ' . expand('%:p') . ' -- ' . shellescape(getline('.'))) <CR>:e!<CR>
map S :w!<CR>:echo system('todo push -f ' . expand('%:p')) <CR>:echo 'Ok.'<CR>
map A :w!<CR>:echo system('todo archive -f ' . expand('%:p')) <CR>:echo 'Ok.'<CR>
map Y :w!<CR>:let @*=system('todo list -f ' . expand('%:p') . ' --since yesterday --status done')<CR>:new <CR>VGP
