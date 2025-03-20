{
  inputs,
  pkgs,
  ...
}: {
  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs;
    [
      brightnessctl
      just
      okular

      discord

      # correctly show icons in tray
      libappindicator
      adwaita-icon-theme

      vlc
    ]
    ++ [
      inputs.nixvim-config.packages.${pkgs.system}.default
    ];
}
