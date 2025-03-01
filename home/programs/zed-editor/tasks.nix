{
  lib,
  pkgs,
  ...
}: {
  xdg.configFile."zed/tasks.json" = {
    text = ''
      [
        {
          "label": "start lazygit",
          "command": "${lib.getExe pkgs.lazygit} -p $ZED_WORKTREE_ROOT",
          "hide": "on_success",
        }
      ]
    '';
    force = true;
  };
}
