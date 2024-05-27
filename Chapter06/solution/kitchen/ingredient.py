class Ingredient(object):

    def __init__(self, name):
        self.name = name
        self.custom_spam_name = None

    def prepare(self, with_spam=True):
        """Might or might not add spam to the ingredient."""
        if with_spam:
            return self.custom_spam_name or 'spam ' + self.name
        return self.name
