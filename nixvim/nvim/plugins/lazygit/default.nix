{pkgs, ...}: let
  lazyGitConfig =
    pkgs.writeText "lazygit_config.yml"
    ''
      git:
          overrideGpg: true
    '';
in {
  plugins.lazygit = {
    enable = true;
    settings = {
      config_file_path = [
        "${lazyGitConfig}"
      ];
      use_custom_config_file_path = 1;
    };
  };
}
