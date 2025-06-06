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
      font-family = "FiraCode Nerd Font Mono";
      font-feature = ["-calt" "-liga" "-dlig"];
      font-size = 11.5;
      maximize = true;
    };
  };
}
