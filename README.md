# dotfiles

Personal configuration files for macOS and Linux.

## Contents

| Directory | Config |
|---|---|
| `nvim/` | Neovim — lazy.nvim, LSP (Python, C, Lua, Bash), Treesitter, Telescope, Neo-tree |
| `tmux/` | tmux |
| `zsh/` | Zsh |

## Setup

Symlink each config to its expected location:

```bash
ln -s ~/Documents/dotfiles/nvim ~/.config/nvim
ln -s ~/Documents/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/Documents/dotfiles/tmux/.tmux.conf ~/.tmux.conf
```

### Neovim dependencies

```bash
brew install neovim ripgrep shellcheck
pip install pynvim
npm install -g neovim
```

Plugins and LSP servers install automatically on first launch via lazy.nvim and Mason.
