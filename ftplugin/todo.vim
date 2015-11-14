map <space> :w<CR>:call system('todo toggle -f ' . expand('%:p') . ' -- ' . shellescape(getline('.')))<CR>:e!<CR>
