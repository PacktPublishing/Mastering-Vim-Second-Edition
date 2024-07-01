vim9script

var dishes = ['spam omelet', 'sausage', 'bacon and spam']  

def HasSpam(dish: string): bool
  if stridx(dish, 'spam') > -1
    return 1
  endif 
  return 0 
enddef 

filter(dishes, 'HasSpam(v:val)') 
echo dishes 

dishes = ['spam omelet', 'sausage', 'bacon']

map(dishes, 'HasSpam(v:val) ? v:val : v:val .. '' and spam ''')
echo dishes
