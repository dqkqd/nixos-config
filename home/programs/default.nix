{
  imports = [
    ./direnv.nix
    ./firefox.nix
    ./foot.nix
    ./git.nix
    ./nvim
    ./starship.nix
    ./zsh.nix
  ];

  programs = {
    bat.enable = true;
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
