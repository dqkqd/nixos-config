{
  inputs,
  lib,
  ...
}: {
  imports = [inputs.catppuccin.homeModules.catppuccin];

  catppuccin = lib.mkDefault {
    enable = true;
    flavor = "mocha";
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
