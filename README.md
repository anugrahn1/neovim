## Minimal Neovim Config

### Sources:

[Neovim Config From Scratch](https://dev.to/oinak/neovim-config-from-scratch-part-i-3o2m)

[Everything related to LSPs, formatting, cmp, etc.](https://lsp-zero.netlify.app/v3.x/getting-started.html)

### Useful Info:

Files in the `after` and `plugins` directory are automatically ran on startup, so you can put plugin specific settings into their own files to make it easier to read. 
Files in the `lua` directory must be called manually using `require`. 
`init.lua` is called automatically.

### TODOs:

Make my own bindings for LSP related actions 
