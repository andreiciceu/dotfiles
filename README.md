# dotfiles

Dotfiles &amp; scripts used on macOS

## Initial setup of new Mac
1. login on gitbhu from CLI
2. install brew, yadm & clone this repo
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install yadm
yadm clone https://github.com/andreiciceu/dotfiles
./scripts/setup.sh
```

### Secrets
- put secrets in `~/secrets/`
- run `./scripts/setup-secrets.sh`


## Tpols
### iTerm2:

- import `iterm.drey.json` profile

### VSCode:

Plugins:

- prettier
- Tailwind CSS IntelliSense
- eslint
- css modules
- code-spell-checker
- GitLens
- Github Copilot

