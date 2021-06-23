## main use

1. In vim cmd mode: 
2. Telescope gitignore 

[##](##) setting ##
1. generate .gitignore file from local 
2. generate .gitignore file with request

```vim
let g:GitignoreGen = local|request
```


## telescope Actions
1. actions default: if no .gitignore ,write to .gitignore in cur directory,
2. actions default: if has .gitignore file, add content to .gitignore file
3. extra action: add_to_cur_buffer


## target

Vim command to generate .gitignore file to repository

## default version

* :neovim:       5.0(nightly)

## install and start

vim-plug
``` vim-plug
Plug 'kamykn/popup-menu.nvim'
```

