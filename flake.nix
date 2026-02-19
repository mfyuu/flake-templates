{
  description = "Nix flake templates";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  outputs =
    { nixpkgs, ... }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
      ];
      forEachSystem = f: nixpkgs.lib.genAttrs systems (system: f nixpkgs.legacyPackages.${system});
    in
    {
      formatter = forEachSystem (pkgs: pkgs.nixfmt-tree);
      templates = {
        default = {
          path = ./templates/default;
          description = "Minimal development environment";
        };
        node = {
          path = ./templates/node;
          description = "Node.js development environment";
        };
        node22 = {
          path = ./templates/node22;
          description = "Node.js 22 development environment";
        };
        node24 = {
          path = ./templates/node24;
          description = "Node.js 24 development environment";
        };
        bun = {
          path = ./templates/bun;
          description = "Bun development environment";
        };
      };
    };
}
