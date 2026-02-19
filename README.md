# flake-templates

Nix flake templates for development environments.

## Usage

```bash
nix flake init -t github:mfyuu/flake-templates         # default
nix flake init -t github:mfyuu/flake-templates#node     # Node.js (latest)
nix flake init -t github:mfyuu/flake-templates#node22   # Node.js 22
nix flake init -t github:mfyuu/flake-templates#node24   # Node.js 24
nix flake init -t github:mfyuu/flake-templates#bun      # Bun
```

## Templates

| Name | Description | Packages |
|------|-------------|----------|
| `default` | Minimal development environment | — |
| `node` | Node.js development environment | nodejs, pnpm, gh, ripgrep |
| `node22` | Node.js 22 development environment | nodejs_22, pnpm, gh, ripgrep |
| `node24` | Node.js 24 development environment | nodejs_24, pnpm, gh, ripgrep |
| `bun` | Bun development environment | bun, gh, ripgrep |
