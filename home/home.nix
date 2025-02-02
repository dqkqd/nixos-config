{
  imports = [
    ./catppuccin.nix
    ./fonts.nix
    ./packages.nix
    ./programs
    ./sway
  ];

  home = {
    username = "dqk";
    homeDirectory = "/home/dqk";
    stateVersion = "24.11"; # Please read the comment before changing.
    sessionVariables = {
      EDITOR = "nvim";
      XDG_CURRENT_DESKTOP = "sway";
      MOZ_ENABLE_WAYLAND = 1;
    };
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
