{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.nixos-hardware.nixosModules.lenovo-thinkpad-p14s-amd-gen2
  ];

  programs.zsh.enable = true;

  users.users.dqk = {
    isNormalUser = true;
    extraGroups = ["wheel"]; # Enable ‘sudo’ for the user.
    shell = pkgs.zsh;
  };

  # locale and timezone
  time.timeZone = "Asia/Tokyo";
  i18n.defaultLocale = "en_US.UTF-8";

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
