{
  pkgs,
  lib,
  ...
}: {
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

  wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true;

    config = rec {
      modifier = "Mod4";
      terminal = "foot";

      startup = [
        {command = "exec systemctl --user import-environment";}
        {command = "firefox";}
        {command = "mako";}
      ];

      keybindings = lib.mkOptionDefault {
        "XF86AudioRaiseVolume" = "exec wpctl set-volume @DEFAULT_SINK@ 5%+";
        "XF86AudioLowerVolume" = "exec wpctl set-volume @DEFAULT_SINK@ 5%-";
        "XF86AudioMute" = "exec wpctl set-mute @DEFAULT_SINK@ toggle";
        "XF86AudioMicMute" = "exec wpctl set-mute @DEFAULT_SOURCE@ toggle";
        "XF86MonBrightnessDown" = "exec brightnessctl set 5%-";
        "XF86MonBrightnessUp" = "exec brightnessctl set 5%+";
        "${modifier}+Shift+r" = "exec slurp | grim -g - - | wl-copy";
        "${modifier}+Shift+t" = "exec grim - | wl-copy";
      };

      input = {
        "*" = {
          dwt = "enabled";
          tap = "enabled";
          tap_button_map = "lrm";
          drag = "enabled";
          click_method = "clickfinger";
          middle_emulation = "enabled";
          scroll_method = "two_finger";
        };
      };
    };
  };

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
