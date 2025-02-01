{pkgs, ...}: {
  home.packages = with pkgs; [
    # utils
    htop
    fastfetch

    # light
    brightnessctl

    just

    # good utils for fzf in nvim
    bat
    delta
    fd
    ripgrep
    skim

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];
}
