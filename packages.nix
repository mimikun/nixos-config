{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Text Editor
    vim
    neovim
    
    # VCS
    git
    
    # Network Utils
    wget
    curl
    
    # Add more...
  ];
}
