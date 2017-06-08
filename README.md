# Dotfiles

These dotfiles are based on setting up a XUbuntu system. The configs should be good for any Linux/BSD but the install scripts may need some changing.

Using the include directory style based on https://github.com/chr4/shellrc


### Adding vim plugins (or other submodule-based stuff)

```
git submodule add git@github.com/path/to/repo vim/bundle/subname
```

then `git add` if necessary and `git commit`


### ZSH Git prompt

Setting the GIT prompt part to be yellow should be done directly in the theme in ~/.oh-my-zsh/themes/

I'll get it set up automatically later...
