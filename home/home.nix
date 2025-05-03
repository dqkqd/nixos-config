{username, ...}: {
  imports = [
    ./catppuccin.nix
    ./fonts.nix
    ./programs
    ./sway
  ];

  home = {
    username = "${username}";
    homeDirectory = "/home/${username}";
    stateVersion = "24.11"; # Please read the comment before changing.
    sessionVariables = {
      EDITOR = "nvim";
      XDG_CURRENT_DESKTOP = "sway";
      MOZ_ENABLE_WAYLAND = 1;

      # fcitx5
      GTK_IM_MODULE = "fcitx";
      QT_IM_MODULE = "fcitx";
    };
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # expiring
  services.home-manager = {
    autoExpire = {
      enable = true;
      frequency = "weekly";
      store.cleanup = true;
      timestamp = "-7 days";
    };
  };
}
