#!/usr/bin/python

import random

INGREDIENTS = ['egg', 'sausage', 'bacon', 'ham', 'crumpets', 'spam']

def prepare_menu_item(ingredient, with_spam=True):
    if with_spam:
        return 'spam ' + ingredient
    return ingredient

def main():
    print('Scene: A cafe. A man and his wife enter.')
    print('Man: Well, what\'ve you got?')
    menu = []
    for ingredient in INGREDIENTS:
        has_spam = random.choice([True,  False])
        menu.append(prepare_menu_item(ingredient, with_spam=has_spam))
    print('Waitress: Well, there\'s', ', '.join(menu))


if __name__ == '__main__':
    main()
