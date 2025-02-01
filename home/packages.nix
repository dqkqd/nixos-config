{pkgs, ...}: {
  home.packages = with pkgs; [
    brightnessctl
    just
  ];
}
