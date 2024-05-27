#!/usr/bin/python

from kitchen import bacon, egg, sausage
import random

INGREDIENTS = [egg.Egg(), bacon.Bacon(), sausage.Sausage()]

def prepare_ingredient(ingredient):
    has_spam = random.choice([True,  False])
    if isinstance(ingredient, egg.Egg) and has_spam:
        return 'spam eggs'
    if isinstance(ingredient, bacon.Bacon) and has_spam:
        return 'bacon and spam'
    if isinstance(ingredient, sausage.Sausage) and has_spam:
        return 'spam sausage'
    return ingredient.name

def main():
    print('Scene: A cafe. A man and his wife enter.')
    print('Man: Well, what\'ve you got?')
    menu = []
    for ingredient in INGREDIENTS:
        menu.append(prepare_ingredient(ingredient))
    print('Waitress: Well, there\'s', ', '.join(menu))


if __name__ == '__main__':
    main()
