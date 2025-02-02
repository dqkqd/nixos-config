{pkgs, ...}: {
  home.packages = with pkgs; [
    noto-fonts
    dejavu_fonts
    roboto
    font-awesome

    (nerdfonts.override {fonts = ["FiraCode" "Meslo"];})
  ];

  fonts.fontconfig.enable = true;
}
