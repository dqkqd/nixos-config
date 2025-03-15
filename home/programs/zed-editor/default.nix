{pkgsUnstable, ...}: {
  imports = [
    ./keymap.nix
    ./settings.nix
    ./tasks.nix
  ];

  programs.zed-editor = {
    enable = false;
    package = pkgsUnstable.zed-editor;
    extensions = [
      "catppuccin-icons"
      "git-firefly"
      "just"
      "make"
      "marksman"
      "nix"
      "toml"
      "typos"
    ];
  };
}
