let ingredient = 'egg'

if ingredient == 'egg' 
  echo 'spam omelet' 
elseif ingredient == 'lobster' 
  echo 'spam lobster thermidor' 
else 
  echo dish . ' and spam' 
endif 

echo 'spam ' . (ingredient == 'egg' ? 'omelet' : dish)

let is_egg = 0
let is_lobster = 0
if (!is_egg && !is_lobster)
  echo ingredient . ' and spam'
endif

'egg' ==? 'EGG'                 " true
'egg' ==# 'EGG'                 " false
set ignorecase | 'egg' == 'EGG' " true
'egg' =~ 'e.\+'                 " true
'egg' =~# 'E.\+'                " false
'egg' !~ '.gg'                  " false
'egg' !~? 'E.\+'                " false
