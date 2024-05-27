from kitchen import ingredient


class Bacon(ingredient.Ingredient):

    def __init__(self):
        self.name = 'bacon'
        self.custom_spam_name = 'bacon and spam'
