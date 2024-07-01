vim9script

var answer = confirm('Add spam to a dish?', "&yes\n&no") 
echo answer

answer = confirm(
    \ 'Add spam to a dish?', "absolutely &yes\nhell &no")

var ingredient = input('Please input an ingredient: ')
echo "\n"
echo 'We now serve ' .. ingredient .. ' and spam!'

def InputIngredient(): string
  inputsave()
  var ingredient = input('Please input an ingredient: ')
  inputrestore()

  return ingredient
enddef

# TODO: Something is not working here, getting a compilation error.
nnoremap <leader>a = :let ingredient = InputIngredient()<cr>:echo ingredient<cr>
