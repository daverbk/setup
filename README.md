**Contents**

<!-- TOC -->
* [Terminal](#terminal)
  * [`brew`](#brew)
  * [`oh-my-zsh`](#oh-my-zsh)
    * [`ZSH_THEME="crunch"` and `plugins=(git zsh-syntax-highlighting zsh-autosuggestions)` in `.zshrc`](#zsh_themecrunch-and-pluginsgit-zsh-syntax-highlighting-zsh-autosuggestions-in-zshrc)
  * [`pinentry-mac`](#pinentry-mac)
  * [`gpg`](#gpg)
* [Git](#git)
* [Apps](#apps)
* [Actions](#actions)
  * [Map `Esc` to `Caps Lock`](#map-esc-to-caps-lock)
  * [Dock](#dock)
* [Fonts](#fonts)
<!-- TOC -->

---

# Terminal

## [`brew`](https://brew.sh/)

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## [`oh-my-zsh`](https://ohmyz.sh/)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### `ZSH_THEME="crunch"` and `plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-vi-mode)` in `.zshrc`

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

```bash
git clone https://github.com/jeffreytse/zsh-vi-mode \
  $ZSH_CUSTOM/plugins/zsh-vi-mode
```

```bash
vim ~/.zshrc
```

## `pinentry-mac`

```bash
brew install pinentry-mac
```

## `gpg`

```bash
brew install gnupg
```

## `sdkman`

```bash
curl -s "https://get.sdkman.io" | bash
```

# Git

* [ ] Add global .gitignore
* [ ] Import `gpg` keys

# Apps

* [ ] [`Telegram`](https://macos.telegram.org/)
* [ ] [`Idea`](https://www.jetbrains.com/idea/download/?section=mac)
* [ ] [`Chrome`](https://www.google.com/intl/en/chrome/)
* [ ] [`Alfred`](https://www.alfredapp.com/)
* [ ] [`Rectangle`](https://rectangleapp.com/)
* [ ] [`Fliqlo`](https://fliqlo.com/)
* [ ] [`1password`](https://support.1password.com/get-the-apps/)
* [ ] [`Spotify`](https://www.spotify.com/us/download/mac/)
* [ ] [`Karabiner`](https://karabiner-elements.pqrs.org/)
* [ ] [`Logi Option`](https://www.logitech.com/en-us/setup/mxsetup/logi-options.html)

# Actions

## Map `Caps Lock` to `Esc`

Settings -> Keyboard -> Keyboard Shortcuts -> Modifier Keys

## Map `Esc` to `

Add a complex modification to `karabiner` from [the file](karabiner-modifications/esc-backtick.json)

## Map `Ctrl` to input source swtich

Add another modification to `karabiner` from [another file](karabiner-modifications/ctrl-input-source.json)

## Dock

Turn off Settings -> Desktop & Dock -> Show suggested and recent apps in Dock

# Fonts

1. Import [`JetBrain Mono`](https://www.jetbrains.com/lp/mono/)
2. Set it in `Terminal` via Settings -> Font -> Change
