# Syntastic + CSF!

`syntastic-csf` is a plugin for [Syntastic](https://github.com/scrooloose/syntastic) that that lints your code using [check_sf](https://github.com/natecavanaugh/check-source-formatting).

## Installation

Once you have [check_sf](https://github.com/natecavanaugh/check-source-formatting) set up, then install `syntastic-csf` using your preffered vim plugin manager ([Vundle](https://github.com/VundleVim/Vundle.vim), [Pathogen](https://github.com/tpope/vim-pathogen), etc...).

## Configuration

You can specify `check_sf` over the builtin checkers for a given file type by adding the following to your `.vimrc`:

```vim
" The following types are supported:
let g:syntastic_javascript_checkers = ['csf']
```

If you need to pass specific parameters to `check_sf`, see syntastic's help page on the subject (`:help syntastic-checker-options`).

## TODO

Add support for the other file types that `check_sf` supports:

* css/scss
* HTML
* mustache/handlebars
* Velocity
* jsp (or at least the HTML-like portions)
