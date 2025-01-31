{ config, pkgs, ... }:

{
  programs.foot = {
    enable = true;
    settings = {
      main = {
        term = "xterm-256color";
        font = "MesloLGS Nerd Font:size=13";
        dpi-aware = "yes";
      };
    };
  };
}
