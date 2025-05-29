{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    ./bat.nix
    ./direnv.nix
    ./firefox.nix
    ./ghostty.nix
    ./git.nix
    ./starship.nix
    ./zsh.nix
  ];

  # programs that don't require configuration
  programs = {
    htop.enable = true;
    fastfetch.enable = true;
    fd.enable = true;
    fzf.enable = true;
    fuzzel.enable = true;
    ripgrep.enable = true;
    skim.enable = true;
    zoxide.enable = true;
    yazi.enable = true;
  };

  # programs that are not managed by home manager
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs;
    [
      brightnessctl
      just
      okular
      obsidian
      discord

      # correctly show icons in tray
      libappindicator
      adwaita-icon-theme

      vlc

      dbeaver-bin
    ]
    ++ [
      inputs.nixvim-config.packages.${pkgs.system}.default
    ];
}
