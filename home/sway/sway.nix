{lib, ...}: {
  wayland.windowManager.sway = {
    enable = true;
    wrapperFeatures.gtk = true;

    config = rec {
      modifier = "Mod4";
      terminal = "foot";

      # use waybar instead
      bars = [
        {command = "waybar";}
      ];

      output = {
        "*" = {
          bg = "${./thank-you.png} fill";
        };
        "HDMI-A-1" = {
          mode = "1920x1080@74.973Hz";
        };
      };

      workspaceOutputAssign = let
        externalWorkspaces = map builtins.toString [1 2 3 4 5 6 7 8];
        externals =
          map (ws: {
            workspace = ws;
            output = "HDMI-A-1";
          })
          externalWorkspaces;
      in
        externals
        ++ [
          {
            workspace = "9";
            output = "eDP-1";
          }
        ];

      startup = [
        {command = "systemctl --user import-environment";}
        {command = "mako";}

        # start input method
        {command = "fcitx5";}

        # open workspace 1 as default
        {command = "swaymsg workspace 1";}
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
        "${modifier}+d" = "exec fuzzel";
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
}
