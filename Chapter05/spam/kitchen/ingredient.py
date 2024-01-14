class Ingredient(object):

    def __init__(self, name):
        self.name = name

    def prepare(self, with_spam=True):
        """Might or might not add spam to the ingredient."""
        if with_spam:
            return 'spam ' + self.name
        return self.name
