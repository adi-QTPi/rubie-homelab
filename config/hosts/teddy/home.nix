{ config, pkgs, ... }: {
  imports = [ 
    ../../modules/shell.nix 
    ../../modules/dev.nix 
  ];

  home.username = "karma";
  home.homeDirectory = "/home/karma"; # Linux-specific path
  home.stateVersion = "24.11";

  programs.zsh.shellAliases = {
    hm = "home-manager switch --flake ~/ops-repo/config#karma@teddy";
  };

  services.gpg-agent = {
    enable = true;
    enableZshIntegration = true;
    pinentry.package = pkgs.pinentry-curses; 
  };

  programs.home-manager.enable = true;
}