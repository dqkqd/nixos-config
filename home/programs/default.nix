{
  imports = [
    ./bat.nix
    ./direnv.nix
    ./firefox.nix
    ./ghostty.nix
    ./git.nix
    ./starship.nix
    ./zsh.nix
  ];

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
}
