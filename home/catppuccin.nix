{catppuccin, ...}: {
  imports = [catppuccin.homeManagerModules.catppuccin];

  catppuccin = {
    enable = true;
    flavor = "mocha";
    zed.flavor = "latte";
  };
}
