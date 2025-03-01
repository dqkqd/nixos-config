{
  imports = [
    ./keymap.nix
    ./settings.nix
    ./tasks.nix
  ];

  programs.zed-editor = {
    enable = true;
    extensions = [
      "just"
      "git-firefly"
      "nix"
    ];
  };
}
