{
  imports = [
    ./keymap.nix
    ./settings.nix
    ./tasks.nix
  ];

  programs.zed-editor = {
    enable = true;
    extensions = [
      "catppuccin-icons"
      "git-firefly"
      "just"
      "make"
      "nix"
    ];
  };
}
