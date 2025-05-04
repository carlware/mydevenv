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
| ⌘ ⌥ + → ←       | navigate panes                  |
| ⌘ + d           | select next instance            |
| ⌘ ⇧ + l         | select all instances            |
| ⌘ ⌥ + ↑ ↓       | multi cursor vertical selection |
| ⇧ ⌥ + f         | format document                 |
| ⌘ + pane #      | move between panes              |
|                 |                                 |
| ⌘ + w           | close window                    |
| ⌘ + f           | find in file                    |
| ⌘ ⇧ ⌥ + O       | show symbols current file       |
| ⌘ + t           | show all symbols                |
| ⌘ ⇧ + n         | open new window                 |
| ⌘ + 0-9         | switch split pane               |
| ⌃ + 0-9         | switch window                   |
|                 |                                 |
| ⌘ + b           | toggle right panel              |
| ⌘ + j           | toggle bottom panel             |
| ⌘ ⌥ + b         | toggle left panel               |
| ⌘ + e           | search file                     |
| ⌘ + m           | open file explorer              |
| ⌘ ⌥ + m         | open recent project             |
| ⌘ + l           | open command palette            |
| ⌘ + q           | quick AI chat                   |
| ⌘ ⇧ ⌥ ⌃ ↑ ↓ → ← |                                 |

### Vim + VSCode commands
| Combination  | Description         |
| ------------ | ------------------- |
| <leader>     | space               |
| <leader> + i | inline chat         |
| <leader> + s | spell suggestion    |
| <leader> + x | create new terminal |
| <leader> + c | compare with branch |
| <leader> + v | split right         |
| <leader> + t | test current        |
| <leader> + r | revert line changes |
|              |                     |

## Useful commands
| Command           | Description |
| ----------------- | ----------- |
| focus file        |             |
| close all editors |             |
| reveal in finder  |             |
| jest: setup       |             |
| format document   |             |


## Vim
| Combination     | Description | Mode   |
| --------------- | ----------- | ------ |
| ⌘ + ↑ ↓ → ←     | select text | VISUAL |
| ⌘ ⇧ ⌥ ⌃ ↑ ↓ → ← |             |        |

### Vim commands 
| Command     | Description                      |
| ----------- | -------------------------------- |
| `set paste` | enabled paste from other sources |


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
| `tmux start-server`          | start server         |

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

## k8s
| Combination                                                 | Description                  |
| ----------------------------------------------------------- | ---------------------------- |
| `kc run -it --rm --restart=Never NAME --image=golang bash ` | run new image                |
| `kc exec -it POD_NAME -- bash `                             | attach to existing container |


## References

1. [asdf](https://asdf-vm.com/manage/commands.html)
2. [tmux](https://medium.com/@Sle3pyHead/tmux-cheat-sheet-and-quick-guide-44038cbe2870)
3. [vscode](https://code.visualstudio.com/shortcuts/keyboard-shortcuts-macos.pdf)