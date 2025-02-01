{pkgs, ...}: {
  home.packages = with pkgs; [(nerdfonts.override {fonts = ["FiraCode" "Meslo"];})];

  fonts.fontconfig.enable = true;
}
