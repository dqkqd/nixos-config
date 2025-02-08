{pkgs, ...}: {
  # load the gpu driver
  boot.initrd.kernelModules = ["amdgpu"];

  boot.kernelParams = [
    "video=card1-HDMI-A-1:1920x1080@74.973"
    "video=card1-eDP-1:1920x1080@60.050"
  ];

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    extraPackages = with pkgs; [
      rocmPackages.clr.icd
      amdvlk
      libva
    ];
    extraPackages32 = with pkgs; [
      driversi686Linux.amdvlk
    ];
  };
}
