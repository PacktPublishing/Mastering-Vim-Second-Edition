# Chapter 9: Where to Go from Here

## .vimrc

See `../Chapter01/README.md` for copying instructions, `../Chapter02/README.md`
for a bit about comments, and `../Chapter03/README.md` for vim-plug download
instructions.

## .config/nvim/init.vim

Since you'll be installing Neovim, you'll also want to link your ~/.vimrc to `init.vim`. For Linux, do:

    $ mkdir -p $HOME/.config
    $ ln -s $HOME/.vim $HOME/.config/nvim
    $ ln -s $HOME/.vimrc $HOME/.config/nvim/init.vim

If you're on Windows:

    $ mklink /D %USERPROFILE%\AppData\Local\nvim %USERPROFILE%\vimfiles
    $ mklink %USERPROFILE%\AppData\Local\nvim\init.vim %USERPROFILE%\_vimrc
