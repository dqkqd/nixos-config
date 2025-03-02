{pkgsUnstable, ...}: {
  imports = [
    ./keymap.nix
    ./settings.nix
    ./tasks.nix
  ];

  programs.zed-editor = {
    enable = true;
    package = pkgsUnstable.zed-editor;
    extensions = [
      "catppuccin-icons"
      "git-firefly"
      "just"
      "make"
      "nix"
    ];
  };
}
