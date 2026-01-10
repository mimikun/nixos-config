{ config, lib, pkgs, ... }:

{
  imports = [
    # include NixOS-WSL modules
    <nixos-wsl/modules>
    ./wsl.nix
    ./packages.nix
  ];

  # Set hostname
  networking.hostName = "wakamo-wsl-nixos";

  # User settings
  users.users.mimikun = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    shell = pkgs.bash;
  };

  # Enable experimental-features: "nix-command", "flakes"
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # DANGER: !!! DO NOT CHANGE !!!
  system.stateVersion = "24.11";
}
