{ config, pkgs, ... }:

{

  home.file.".config/fastfetch/config.jsonc".source = ./fastfetch.jsonc;

  programs.fastfetch.enable = true;
}
