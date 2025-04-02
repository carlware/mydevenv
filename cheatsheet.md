# Cheat sheets

This are the commands that I use most

### Keys
* ⌘ Command (or Cmd)
* ⇧ Shift
* ⌥ Option (or Alt)
* ⌃ Control (or Ctrl)
* ↑ arrow up 
* ↓ arrow down
* → arrow right
* ← arrow left

## VSCode
| Combination     | Description                     |
| --------------- | ------------------------------- |
| ⌃ ⌘ + →         | Split pane                      |
| ⌘ + w           | close window                    |
| ⌘ ⌥ + → ←       | navigate panes                  |
| ⌘ + d           | select next instance            |
| ⌘ ⇧ + L         | select all instances            |
| ⌘ ⌥ + ↑ ↓       | multi cursor vertical selection |
| fn f2           | rename symbol                   |
| ⌘ ⇧ + P         | open command palette            |
| ⌘ + P           | search file                     |
| ⌃ + -           | go back from definition         |
| ⌃ ⇧ + -         | go forward from definition      |
| ⌘ ⇧ + N         | open new window                 |
| ⌘ + ,           | open settings                   |
| ⇧ ⌥ + F         | format document                 |
| ⌘ + T           | show all symbols                |
| ⌘ ⇧ ⌥ + O       | show symbols current file       |
| ⌘ + F           | find in file                    |
| ⌘ ⇧ + O         | show all folders                |
| ⌘ + b           | hide side bar                   |
| ⌘ ⇧ + b         | hide secondary bar              |
| ⌃ + s           | my super                        |
| ⌃ + s i         | inline chat                     |
| ⌃ + s →         | move forward                    |
| ⌃ + s ←         | move backward                   |
| ⌃ + s ↑         | goto definition                 |
| ⌃ + s  \        | split right                     |
| ⌃ + s  s        | spell suggestion                |
| ⌃ + s  b        | bold in markdown                |
| ⌘ ⇧ ⌥ ⌃ ↑ ↓ → ← |                                 |

## Vim
| Combination     | Description | Mode   |
| --------------- | ----------- | ------ |
| ⌘ + ↑ ↓ → ←     | select text | VISUAL |
| ⌘ ⇧ ⌥ ⌃ ↑ ↓ → ← |             |        |
 

## ASDF
| Command                       | Description                          |
| ----------------------------- | ------------------------------------ |
| `asdf plugin list`            | show all installed plugins           |
| `asdf plugin add $name $url`  | add plugin                           |
| `asdf plugin remove $name`    | remove plugin                        |
| `asdf plugin update $name`    | update plugin                        |
| `asdf install $name $version` | install plugin in project            |
| `asdf set $name $version`     | install plugin locally ($PWD)        |
| `asdf set $name $version`     | install plugin globally (move to ~/) |

## Tmux
### commands
| Combination                  | Description          |
| ---------------------------- | -------------------- |
| `tmux kill-server`           | kill all sessions    |
| `tmux list-sessions`         | show all sessions    |
| `tmux new -s $name`          | create a new session |
| `tmux source ~/.tmux.conf`   | reload tmux app      |
| `tmux kill-session -t $name` | kill single session  |

### app
| Command     | Description                |
| ----------- | -------------------------- |
| ⌃ s         | super key                  |
| ⌃ s + 0-9   | move between windows       |
| ⌃ s + n     | move next window           |
| ⌃ s + '     | select window              |
| ⌃ s + w     | select between all windows |
| ⌃ s + c     | create new window          |
| ⌃ s + x     | kill current window        |
| ⌃ s + \|    | split pane vertical        |
| ⌃ s + -     | split pane horizontal      |
| ⌃ s + ⇧ + I | install tmux packages      |
| ⌃ s + [     | enter in vi mode           |

## Misc
| Command          | Description             |
| ---------------- | ----------------------- |
| `p10k configure` | runs p10k configuration |
| ``               |                         |

## Psql 
| Combination  | Description          |
| ------------ | -------------------- |
| `pg_isready` | check if pg is ready |


## References

1. [asdf](https://asdf-vm.com/manage/commands.html)
2. [tmux](https://medium.com/@Sle3pyHead/tmux-cheat-sheet-and-quick-guide-44038cbe2870)
3. [vscode](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-macos.pdf)