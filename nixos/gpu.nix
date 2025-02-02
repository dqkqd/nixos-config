{pkgs, ...}: {
  # load the gpu driver
  boot.initrd.kernelModules = ["amdgpu"];

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
