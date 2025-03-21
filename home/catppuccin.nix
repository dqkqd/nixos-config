{
  inputs,
  lib,
  ...
}: {
  imports = [inputs.catppuccin.homeManagerModules.catppuccin];

  catppuccin = lib.mkDefault {
    enable = true;
    flavor = "mocha";
    zed.flavor = "latte";
  };

  specialisation = lib.mkDefault {
    dark = {
      configuration = {
        catppuccin.flavor = "mocha";
      };
    };
    light = {
      configuration = {
        catppuccin.flavor = "latte";
      };
    };
  };
}
