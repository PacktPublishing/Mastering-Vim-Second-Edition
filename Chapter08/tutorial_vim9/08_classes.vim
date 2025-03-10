vim9script

class Dish
  var ingredient: string
  var dish_name: string

  def PrepareIngredient(has_spam: bool)
    this.dish_name = has_spam ? this.ingredient ..
        \ ' and spam' : this.ingredient
  enddef
endclass

var bacon = Dish.new('bacon')
bacon.PrepareIngredient(true)
echo bacon.dish_name
