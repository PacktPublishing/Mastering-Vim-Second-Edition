vim9script

def PrepareIngredient(ingredient: string) 
  echo ingredient .. ' and spam' 
enddef 

def PrepareIngredient2(ingredient: string)
  return ingredient .. ' and spam'
enddef
