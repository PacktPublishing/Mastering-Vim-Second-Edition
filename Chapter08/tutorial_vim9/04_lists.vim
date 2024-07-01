vim9script

var ingredients = ['egg', 'bacon', 'sausage']

const egg = ingredients[0]      # get first element
const bacon = ingredients[1]    # get second element
const sausage = ingredients[-1] # get last element

var slice = ingredients[1 : ]
slice = ingredients[0 : 1]

add(ingredients, 'lobster')
# ingredients = add(ingredients, 'lobster')

insert(ingredients, 'tomato')
insert(ingredients, 'ham', 2)
unlet ingredients[2]
remove(ingredients, -1)
const tomato = remove(ingredients, 0)
unlet ingredients[:1]
# remove(ingredients, 0, 1)

var fresh = ['egg', 'lobster']
var preserved = ['bacon', 'sausage']
ingredients = fresh + preserved
extend(fresh, preserved)

sort(ingredients)

var i = index(ingredients, 'lobster')

if empty(ingredients)
  echo 'There are no ingredients!'
endif

echo 'There are ' .. len(ingredients) .. ' ingredients.'

echo 'There are ' .. count(ingredients, 'egg') .. ' eggs.'
