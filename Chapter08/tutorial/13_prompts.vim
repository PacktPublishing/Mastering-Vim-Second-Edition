let answer = confirm('Add spam to a dish?', "&yes\n&no") 
echo answer

let answer = confirm(
    \ 'Add spam to a dish?', "absolutely &yes\nhell &no")

let ingredient = input('Please input an ingredient: ')
echo "\n"
echo 'We now serve ' . ingredient . ' and spam!'

function InputIngredient()
  call inputsave()
  let ingredient = input('Please input an ingredient: ')
  call inputrestore()

  return ingredient
endfunction

nnoremap <leader>a = :let ingredient = InputIngredient()<cr>:echo ingredient<cr>
