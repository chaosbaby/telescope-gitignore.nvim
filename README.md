## main use

1. In vim cmd mode: 
2. Telescope gitignore 

[##](##) setting ##
1. - [X]  generate .gitignore file from local @finish(2021-06-25 00:05)
2. - [C]  generate .gitignore file with request @cancel(2021-06-25 00:05)

```vim
let g:GitignoreGen = local|request
```


## telescope Actions
1. - [X]  actions default: if no .gitignore ,write to .gitignore in cur directory, @finish(2021-06-25 00:06)
2. - [ ]  actions default: if has .gitignore file, add content to .gitignore file @init(2021-06-25 00:00)
3. - [ ]  extra action: add_to_cur_buffer @init(2021-06-25 00:00)


## target

Vim command to generate .gitignore file to repository

## default version

* :neovim:       5.0(nightly)

## install and start

vim-plug
``` vim-plug
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-gitignore.nvim'
```

