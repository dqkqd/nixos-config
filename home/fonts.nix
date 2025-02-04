{pkgs, ...}: {
  home.packages = with pkgs; [
    noto-fonts
    dejavu_fonts
    roboto
    font-awesome

    # japanese font
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif

    (nerdfonts.override {fonts = ["FiraCode" "Meslo"];})
  ];

  fonts.fontconfig.enable = true;
}
