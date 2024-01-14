from kitchen import ingredient


class Egg(ingredient.Ingredient):

    def __init__(self):
        self.name = 'egg'

    def prepare(self, with_spam=True):
        """Becomes an omelet as you add spam!"""
        return 'spam omelet' if with_spam else self.name
