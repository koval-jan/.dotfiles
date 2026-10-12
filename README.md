# .dotfiles (chezmoi - personal instance)

Personal dotfiles (public). Work-specific configuration lives in a separate
private chezmoi instance on the internal GitLab - never in this repo.

## Setup (any machine)

    chezmoi init --apply koval-jan/.dotfiles
    # answer the prompt: profile = personal | server

## Daily

    chezmoi edit <file>    # edit source state
    chezmoi diff           # review pending changes
    chezmoi apply          # deploy
    chezmoi update         # git pull + apply
    chezmoi add <file>     # start managing a file
    chezmoi unmanaged      # what is not managed yet

## Conventions

- Profiles: `personal` | `server` (prompted once at init, stored locally).
- Git identity: base = GitHub identity; repos under `~/git/` use
  `~/.gitconfig.work` (deployed by the work instance); repos under
  `~/git.github/` use the base (GitHub) identity via directory layout.
