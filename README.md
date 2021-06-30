## Target

Vim command to generate .gitignore file to repository

## Main Use
In vim cmd mode: 
```
Telescope gitignore 
```

## Relation 
Integration with github/gitignore

[## ](##)Dev Steps ##

1. - [X]  generate .gitignore file from local @finish(2021-06-25 00:05)
2. - [C]  generate .gitignore file with request @cancel(2021-06-25 00:05)

### Telescope Actions ###

1. - [X]  actions default: if no .gitignore ,write to .gitignore in cur directory, @finish(2021-06-25 00:06)
2. - [X]  actions default: if has .gitignore file, add content to .gitignore file @finish(2021-06-25 01:21)
3. - [X]  actions default：give out choices : append|replace , 
4. - [X]  actions default：go to .gitingore file when action finish 
 
6. - [ ]  extra action: add_to_cur_buffer @init(2021-06-25 00:00)

## Default Neovim Version

* :neovim:       5.0(nightly)

## Installation

vim-plug
``` vim-plug
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-gitignore.nvim'
```

## Setup ##

	require('telescope').load_extension('gitignore')

