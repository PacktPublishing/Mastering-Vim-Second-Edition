let ingredients = ['egg', 'bacon', 'sausage']

let egg = ingredients[0]      " get first element
let bacon = ingredients[1]    " get second element
let sausage = ingredients[-1] " get last element

let slice = ingredients[1:]
let slice = ingredients[0:1]

call add(ingredients, 'lobster')
" let ingredients = add(ingredients, 'lobster')

call insert(ingredients, 'tomato')
call insert(ingredients, 'ham', 2)
unlet ingredients[2]
call remove(ingredients, -1)
let tomato = remove(ingredients, 0)
unlet ingredients[:1]
" call remove(ingredients, 0, 1)

let fresh = ['egg', 'lobster']
let preserved = ['bacon', 'sausage']
let ingredients = fresh + preserved
call extend(fresh, preserved)

call sort(ingredients)

let i = index(ingredients, 'lobster')

if empty(ingredients)
  echo 'There are no ingredients!'
endif

echo 'There are ' . len(ingredients) . ' ingredients.'

echo 'There are ' . count(ingredients, 'egg') . ' eggs.'
