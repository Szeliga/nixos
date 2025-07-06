{ config, pkgs, ... }:

{
  home.username = "szymon";
  home.homeDirectory = "/home/szymon";
  home.stateVersion = "25.05";

  programs.home-manager.enable = true;

  home.packages = with pkgs; [ 
    ripgrep
    git
    fzf
    jq
    jid
    tree
  ];

  programs.git = {
    enable = true;
    userName = "Szymon Szeliga";
    userEmail = "szeliga.szymon@gmail.com";
  };
}
