# vim-solidity

Yet another maintained syntax [Solidity](https://github.com/ethereum/solidity), the smart contract programming language
for Ethereum.

Heavily inspired by [`thesis/vim-solidity`](https://github.com/thesis/vim-solidity).

## Main Changes

- Add support for some missing Solidity features
    - `unchecked { ... }` blocks
    - `receive` and `fallback` functions
    - Numeric separators
- Improve `import` syntax highlighting
- Improve `pragma` syntax highlighting
- Use heuristic for user-defined types
- Use saner highlights for `contract`, `interface`, `library` and `struct`
- Highlight function and event names on definition
- Use special colors for Solidity global variables and builtin functions

![before-after-1](https://i.imgur.com/FYh11cG.png)
Before / After

![before-after-2](https://i.imgur.com/mnnOLKO.png)
Before / After

![before-after-3](https://i.imgur.com/H3raQhh.png)
Before / After

![before-after-4](https://i.imgur.com/qYLhEMu.png)
Before / After

## Known Issues

- Folding is not working properly in all cases.

## Installation

### Vim Plug
Add the following line to your `~/.vimrc`:

```vim
Plug 'thesis/vim-solidity'
```

### Vundle

Add the following line to your `~/.vimrc`:

```vim
Plugin 'thesis/vim-solidity'
```
### Pathogen
Run the following command:

```bash
git clone https://github.com/hbarcelost/vim-solidity.git ~/.vim/bundle/vim-solidity
```

### No Plugin Manager

Copy all of the files manually into your `~/.vim`.

## Configuration

```vim
augroup solidity_folding
    au!
    au FileType solidity setlocal foldmethod=syntax
augroup END
```

Will enable Solidity code-folding based on the included syntax file. This might have an impact on editing performance.
