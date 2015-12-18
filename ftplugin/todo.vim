autocmd FileType todo noremap <buffer> <space> :w!<CR>:echo system('todo toggle --no-report -f ' . expand('%:p') . ' -- ' . shellescape(getline('.'))) <CR>:e!<CR>
autocmd FileType todo noremap <buffer> S :w!<CR>:echo system('todo push idonethis -f ' . expand('%:p')) <CR>
autocmd FileType todo noremap <buffer> A :w!<CR>:echo system('todo archive -f ' . expand('%:p')) <CR>:e!<CR>
autocmd FileType todo noremap <buffer> Y :w!<CR>:let @*=system('todo list -f ' . expand('%:p') . ' --since yesterday --status done')<CR>:new <CR>VGP
