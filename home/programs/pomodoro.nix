{
  pkgs,
  config,
  ...
}: {
  home.packages = with pkgs; [
    openpomodoro-cli
  ];

  # https://github.com/open-pomodoro/openpomodoro-cli?tab=readme-ov-file#hooks
  home.file = let
    hookDir = "${config.home.homeDirectory}/.pomodoro/hooks";
  in {
    "${hookDir}/start" = {
      executable = true;
      text = ''
        #!/usr/bin/env bash
        set -exo pipefail
        ${pkgs.libnotify}/bin/notify-send -t 10000 Pomodoro started
      '';
    };

    "${hookDir}/stop" = {
      executable = true;
      text = ''
        #!/usr/bin/env bash
        set -exo pipefail
        ${pkgs.libnotify}/bin/notify-send -t 10000 Pomodoro "stopped, let's take a break"
      '';
    };
  };
}
