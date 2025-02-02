{pkgs, ...}: {
  imports = [
    ./sway.nix
    ./waybar.nix
  ];

  services.gnome-keyring.enable = true;

  home.packages = with pkgs; [
    # support screenshot
    grim
    slurp
    # copy on wayland
    wl-clipboard
    # notification
    mako
  ];

  # enable wayland screen sharing
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-wlr
      xdg-desktop-portal-gtk
    ];
    config = {
      common = {
        default = ["wlr" "gtk"];
      };
    };
  };
}
