{
  imports = [
    ./catppuccin.nix
    ./fonts.nix
    ./packages.nix
    ./programs
    ./sway.nix
  ];

  home = {
    username = "dqk";
    homeDirectory = "/home/dqk";
    stateVersion = "24.11"; # Please read the comment before changing.
    sessionVariables = {EDITOR = "nvim";};
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
