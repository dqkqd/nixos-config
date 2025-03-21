{
  nixcats,
  username,
  ...
}: let
  editor = nixcats.defaultPackageName;
in {
  imports = [
    ./catppuccin.nix
    ./fonts.nix
    ./packages.nix
    ./programs
    ./sway
    nixcats.homeModules.default
  ];

  ${editor}.enable = true;

  home = {
    username = "${username}";
    homeDirectory = "/home/${username}";
    stateVersion = "24.11"; # Please read the comment before changing.
    sessionVariables = {
      EDITOR = "${editor}";
      XDG_CURRENT_DESKTOP = "sway";
      MOZ_ENABLE_WAYLAND = 1;

      # fcitx5
      GTK_IM_MODULE = "fcitx";
      QT_IM_MODULE = "fcitx";
    };
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
