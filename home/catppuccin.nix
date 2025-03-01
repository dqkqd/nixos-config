{inputs, ...}: {
  imports = [inputs.catppuccin.homeManagerModules.catppuccin];

  catppuccin = {
    enable = true;
    flavor = "mocha";
    zed.flavor = "latte";
  };
}
