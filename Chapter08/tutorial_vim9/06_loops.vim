vim9script

for ingredient in ['egg', 'bacon', 'sausage'] 
  echo ingredient 
endfor 

const menu = {
  \ 'egg': 'spam omelet',
  \ 'bacon': 'bacon and spam',
  \ 'sausage': 'spam with sausage'
  \ }

for ingredient in keys(menu) 
  echo 'A dish with ' .. ingredient .. ' is called ' .. menu[ingredient] 
endfor 

for [ingredient, dish] in items(menu) 
  echo 'A dish with ' .. ingredient .. ' is called ' .. dish 
endfor 

var ingredients = ['egg', 'bacon', 'sausage'] 

for ingredient in ingredients 
  if ingredient == 'bacon' 
    echo 'Found bacon! Breaking!' 
    break 
  endif 
  echo 'Looking at an ingredient ' .. ingredient .. ', no bacon yet.' 
endfor 

ingredients = ['egg', 'bacon', 'sausage'] 

for ingredient in ingredients
  if ingredient == 'egg'
    echo 'Ignoring the egg...'
    continue
  endif
  echo 'Looking at an ingredient ' .. ingredient
endfor

ingredients = ['egg', 'bacon', 'sausage']

while !empty(ingredients)
  echo remove(ingredients, 0)
endwhile

ingredients = ['egg', 'bacon', 'sausage']

while len(ingredients) > 0
  var ingredient = remove(ingredients, 0)
  if ingredient == 'bacon'
    echo 'Found the bacon, breaking!'
    break
  endif
  echo 'Looking at an ingredient ' .. ingredient
 endwhile
