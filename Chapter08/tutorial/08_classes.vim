function PrepareIngredient(has_spam) dict
  let self.dish_name = a:has_spam == 1 ? self.ingredient . ' and spam'
      \ : self.ingredient
endfunction 

let dish = { 
  \ 'ingredient': 'sausage', 
  \ 'dish_name': '', 
  \ 'PrepareIngredient': function('PrepareIngredient')
  \ } 

call dish.PrepareIngredient(1) 
echo dish.dish_name 
