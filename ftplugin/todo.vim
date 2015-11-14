map <space> :call setline(line('.'), substitute(system('todo toggle -- ' . shellescape(getline('.'))), '[\]\|[[:cntrl:]]', '', 'g')) <CR>:w!<CR>
map S :call system('todo push -f ' . expand('%:p')) <CR>:echo 'Ok.'<CR>
map A :call system('todo archive -f ' . expand('%:p')) <CR>:echo 'Ok.'<CR>
