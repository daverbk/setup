# dots & packages

Install packages

```
./scripts/setup.sh
```

Apply dotfiles

```
stow --adopt -t ~ <package_name>
git reset --hard
```

Available packages

- desktop (contains overall desktop configs)
- idea (.ideavimrc)
- zsh (.zshrc)
- nvim (nvim + lazyvim config)

## todo

- openvpn3 w/ tunnelbear setup script
- elephant-bookmarks via elephant-all & activate script
- logins list
- remove extra apps & web apps
- start hyprdynamicmonitors services
