{
  description = "TA-Solaris' NVIM using NVF";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = {
    self,
    nixpkgs,
    nvf,
    ...
  }: let
    systems = ["x86_64-linux" "aarch64-darwin"];
    forEachSystem = f: nixpkgs.lib.genAttrs systems (system: f system);
  in {
    packages = forEachSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
        customNeovim = nvf.lib.neovimConfiguration {
          inherit pkgs;
          modules = [./config/default.nix];
        };
      in {
        default = customNeovim.neovim;
      }
    );
  };
}
