{pkgsUnstable, ...}: {
  programs.ghostty = {
    enable = true;
    package = pkgsUnstable.ghostty;
    enableZshIntegration = true;
    installBatSyntax = true;
    installVimSyntax = true;
    settings = {
      auto-update = "off";
      background-opacity = 0.9;
      font-family = "MesloLGS Nerd Font Mono";
      font-size = 13;
      maximize = true;
    };
  };
}
