# Hersh's Vim Configuration
I use Vim for writing code and note taking. Definitely no Vim expert, but it's definitely saved me time since switching from conventional (non-modal) text editors.

### Usage
If you clone this repository into your `~/.vim/`, you should immediately have access to my setup. All dependencies are initialized as git submodules, and `pathogen` is used to manage runtime activities.

Also, make sure to install the latest version of Vim with python support. If you use homebrew, you can issue the following commands:
```
brew remove vim
brew cleanup
brew install vim --with-python3 --override-system-vi
```

### Vim-Pandoc Implementation for Notes
I use vim-pandoc so that I can create documents using pandoc markdown, and then using a single editor shortcut (`:Render`) render the markdown file as a PDF via a LaTeX engine. This saves time, and allows for specification of TeX parameters like margins, template, etc. Also inline formulas work great.

### Aesthetics
I use lightbar and some other modifications to make Vim look pretty.
