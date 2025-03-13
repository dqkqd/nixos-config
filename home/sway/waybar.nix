{lib, ...}: {
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        output = ["eDP-1" "HDMI-A-1"];

        modules-left = [
          "sway/workspaces"
        ];

        modules-center = ["clock"];
        modules-right = [
          "network"
          "memory"
          "cpu"
          "temperature"
          "battery"
          "backlight"
          "wireplumber"
          "disk"
          "sway/language"
          "tray"
        ];

        "sway/workspaces" = {
          format = "{icon}";
          disable-scroll = true;
          all-outputs = true;
        };

        network = {
          interval = 10;
          format-wifi = "  ({signalStrength}%)";
          format-ethernet = "󰈀 {ipaddr}/{cidr}";
          format-disconnected = "⚠  Disconnected";
          tooltip-format-wifi = "  {essid} ({signalStrength}%) {frequency}GHz";
          max-length = 15;
        };

        memory = {
          interval = 10;
          format = " {used:0.1f}G";
          tooltip-format = "{used:0.1f}G / {total:0.1f}G";
          max-length = 15;
        };

        cpu = {
          interval = 5;
          format = " {usage}%";
        };

        temperature = {
          format = " {temperatureC}°C";
          critical-threshold = 80;
        };

        battery = {
          interval = 60;
          states = {
            warning = 30;
            critical = 15;
          };
          format = "{icon}  {capacity}%";
          format-charging = " {icon}  {capacity}%";
          format-icons = ["" "" "" "" ""];
          tooltip-format = "{timeTo}, charged cylcles: {cycles}, health: {health}%";
          max-length = 25;
        };

        backlight = {
          format = "{icon} {percent}%";
          format-icons = ["" ""];
        };

        wireplumber = {
          format = "{icon}  {volume}%";
          format-muted = "";
          format-icons = ["" "" ""];
          tooltip-format = "volume: {volume}%";
        };

        disk = {
          interval = 30;
          format = "{used}";
          path = "/";
        };

        "sway/language" = {
          format = "{short} {variant}";
        };

        tray = {
          icon-size = 21;
          spacing = 10;
          show-passive-items = true;
        };

        clock = {
          format = "{:%a, %b %d, %Y (%R)}";
          format-alt = "{:%A, %B %d, %Y (%T)}";
          tooltip-format = "<tt><small>{calendar}</small></tt>";
          calendar = {
            mode = "year";
            mode-mon-col = 3;
            weeks-pos = "right";
            on-scroll = 1;
            format = {
              months = "<span color='#ffead3'><b>{}</b></span>";
              days = "<span color='#ecc6d9'><b>{}</b></span>";
              weeks = "<span color='#99ffdd'><b>W{}</b></span>";
              weekdays = "<span color='#ffcc66'><b>{}</b></span>";
              today = "<span color='#ff6699'><b><u>{}</u></b></span>";
            };
          };
          actions = {
            on-click-right = "mode";
            on-scroll-up = "tz_up";
            on-scroll-down = "tz_down";
          };
        };
      };
    };

    style = lib.mkForce ./waybar-style.css;
  };
}
