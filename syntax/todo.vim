if exists('b:current_syntax') && b:current_syntax == 'todo'
  finish
endif

runtime! syntax/html.vim

syn match  TodoHeading '^#\+ .\+$'      contains=NONE
syn match  TodoItem    '^\- .\+$'       contains=TodoProject,TodoTag
syn match  TodoDone    '^x .\+$'        contains=NONE
syn match  TodoProject ' +[^ ]\+'      contains=NONE
syn match  TodoTag     '[^ ]\+:[^ /]\+' contains=NONE

hi default link TodoHeading Title
hi default link TodoItem    Normal
hi default link TodoDone    NonText
hi default link TodoProject Directory
hi default link TodoTag     Comment

let b:current_syntax = "todo"
