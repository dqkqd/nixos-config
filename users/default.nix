{
  inputs,
  pkgs,
  username,
  ...
}: {
  imports = [
    inputs.nixos-hardware.nixosModules.lenovo-thinkpad-p14s-amd-gen2
  ];

  programs.zsh.enable = true;

  users.users.${username} = {
    isNormalUser = true;
    extraGroups = ["wheel" "input" "docker"]; # Enable ‘sudo’ for the user.
    shell = pkgs.zsh;
  };

  # locale and timezone
  time.timeZone = "Asia/Tokyo";

  i18n = {
    defaultLocale = "en_US.UTF-8";
    supportedLocales = ["en_US.UTF-8/UTF-8" "ja_JP.UTF-8/UTF-8"];
    inputMethod = {
      type = "fcitx5";
      enable = true;
      fcitx5.waylandFrontend = true;
      fcitx5.addons = with pkgs; [
        # japanese
        fcitx5-mozc
        # vietnamese
        fcitx5-unikey
        fcitx5-gtk
      ];
    };
  };

  # https://nixos.wiki/wiki/Sway
  # enable polkit for setting up sway in home-manager
  security.polkit.enable = true;

  # enable wayland screen sharing
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-wlr
      xdg-desktop-portal-gtk
    ];
    config = {
      firefox = {
        default = ["wlr" "gtk"];
      };
    };
  };
}
