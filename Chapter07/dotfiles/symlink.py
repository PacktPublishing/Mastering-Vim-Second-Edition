import os

dotfiles_dir = os.path.join(os.environ['HOME'], 'dotfiles')
for filename in os.listdir(dotfiles_dir):
  os.symlink(
      os.path.join(dotfiles_dir, filename),
      os.path.join(os.environ['HOME'], filename))
