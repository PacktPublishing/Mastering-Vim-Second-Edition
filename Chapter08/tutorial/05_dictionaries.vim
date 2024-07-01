let menu = { 
  \ 'egg': 'spam omelet', 
  \ 'bacon': 'bacon and spam', 
  \ 'sausage': 'spam with sausage' 
  \ } 

let egg_dish = menu['egg']  " get an element
let egg_dish = menu.egg     " another way to access an element

let menu['lobster'] = 'lobster thermidor'

unlet menu['lobster']
" let lobster = remove(menu, 'lobster')

call extend(menu, {'lobster': 'lobster thermidor'})

echo menu

if !empty(menu)
  echo 'There are ' . len(menu) . ' dishes in the menu.'
endif

if has_key(menu, 'egg')
  echo 'An egg dish is called ' . menu['egg']
endif
