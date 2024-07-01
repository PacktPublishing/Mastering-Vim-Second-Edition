let dish = 'spam omelet'

echo dish . ' probably got spam in it'
execute 'echo dish ''probably got spam in it'''

" normal /eggdw

silent echo dish . ' probably got spam in it'
silent execute 'echo dish ''probably got spam in it'''

silent !echo 'this is running in a shell'

if has('python3')
  echom 'Your Vim was compiled with Python 3 support!'
endif
