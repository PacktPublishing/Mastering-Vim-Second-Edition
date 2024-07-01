let dishes = ['spam omelet', 'sausage', 'bacon and spam']  

function HasSpam(dish) 
  if stridx(a:dish, 'spam') > -1
    return 1
  endif 
  return 0 
endfunction 

call filter(dishes, 'HasSpam(v:val)') 
echo dishes 

let dishes = ['spam omelet', 'sausage', 'bacon']

call map(dishes, 'HasSpam(v:val) ? v:val : v:val . '' and spam ''')
echo dishes
