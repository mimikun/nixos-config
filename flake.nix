{
  description = "mimikun's NixOS configuration";

  inputs = {
    # NOTE: unstable version
    #nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    # NOTE: stable version
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations = {
      wakamo-wsl-nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
        ];
      };
    };
  };
}
