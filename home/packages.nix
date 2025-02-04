{pkgs, ...}: {
  home.packages = with pkgs; [
    brightnessctl
    just
    okular
  ];
}
