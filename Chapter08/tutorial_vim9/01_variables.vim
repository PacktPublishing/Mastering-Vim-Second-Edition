vim9script

var ingredient = 'egg'

echo 'Scene: A cafe. A man and his wife enter.'
echo 'Man: Well, what''ve  you got?'
echo ingredient
echo '- said the waitress'

set background=dark

var dish = 'spam omelet'
dish = 'bacon and spam'

var has_spam = 1

g:dish = 'spam omelet'
w:has_spam = 1

@a = 'spam spam spam'

&ignorecase = 0

var statement = 'Well, we''ve got ' .. g:dish
