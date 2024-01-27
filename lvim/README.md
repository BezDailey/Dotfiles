# LunarVim Guide
Welcome to my LunarVim Guide! This document aims to provide comprehensive insights into LunarVim, a modern, extensible Neovim distrubution designed for en efficient and enjoyable coding experience.

## Introduction
LunarVim is an open-source project that enhances the functionality of Neovim by integrating a range of plugins and tools, offering a rich development environment. This guide covers the basics of getting started with LunarVim, including installation, configuration, and usage tips.

## Keybindings
Here's a overview of the most commonly used mappings. It's not a complete list, you can find more by pressing `<leader>sk` or `<leader>`.
### Plugins
| Key                     | Description | Mode   |
| ---                     | ----------- | ----   |
|                         |             |        |
| `<leader>`              | whichkey    | normal |
| `<leader>e`             | nvimtree    | normal |
| `<leader>f` `<leader>s` | telescope   | normal |
| `<leader>;`             | alpha       | normal |
| `<C-\>` `<M-1/2/3>`     | toggleterm  | normal |

### LSP
| Key    | Description                                  | Mode   |
| ---    | -----------                                  | ----   |
|        |                                              |        |
| `K`    | hover information (double tap to get inside) | normal |
| `KK`   | move cursor inside `K` window                | normal |
| `gd`   | go to definition                             | normal |
| `gD`   | go to declaration                            | normal |
| `gr`   | go to references                             | normal |
| `gI`   | got to implementation                        | normal |
| `gs`   | show signature help                          | normal |
| `gl`   | show line diagnostics                        | normal |
| `glgl` | move cursor inside `gl` diagnostic window    | normal |

### Editing
| Key         | Description       | Mode           |
| ---         | -----------       | ----           |
| `<leader>/` | comment           | normal, visual |
| `gb`        | block comment     | visual         |
| `<M-k>`     | move line(s) up   | normal, visual |
| `<M-j>`     | move line(s) down | normal, visual |

### Completion
| Key            | Description          | Mode   |
| ---            | -----------          | ----   |
|                |                      |        |
| `<C-space>`    | show completion menu | insert |
| `<CR>` `<C-y>` | confirm              | insert |
|                |                      |        |
