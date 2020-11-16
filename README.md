# gyazo.vim
Vim/Neovim plugin for Gyazo

![](https://i.gyazo.com/2adcdcc57f144bd524bc29bd1affbe75.gif)

## Requirements
- [gyazo](https://github.com/skanehira/gyazo)

## Installation

1. Install [gyazo](https://github.com/skanehira/gyazo)
2. Install this plugin  
   e.g [dein.vim](https://github.com/Shougo/dein.vim)

   ```vim
   call dein#add('skanehira/gyazo.vim')
   ```

## Usage

```vim
" upload specified file
:GyazoUpload [file]

" upload from clipboard
:GyazoUpload
```

## Key map

| Key map                | Description           |
|------------------------|-----------------------|
| `<Plug>(gyazo-upload)` | Upload image to Gyazo |

## Options

| options                     | description                          |
|-----------------------------|--------------------------------------|
| `gyazo_insert_markdown_url` | insert markdown link to current line |

## Author
skanehira
