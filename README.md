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
- Use saner highlights for `contract`, `interface`, `library` and `struct`
- Use different colors for Solidity global variables and functions
- Use different colors for contract-related keywords
- Disable syntax folding (TODO: fix and re-enable it)

![before-after](https://i.imgur.com/TpbZO1f.png)
Before / After

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
