class Ingredient(object):

    def __init__(self, name):
        self.name = name

    def prepare(self, with_spam=True):
        if with_spam:
            return 'spam ' + self.name
        return self.name
