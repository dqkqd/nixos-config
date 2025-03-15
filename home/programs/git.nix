{pkgs, ...}: {
  programs.git = {
    enable = true;
    userName = "Khanh Duong";
    userEmail = "dqkqdlot@gmail.com";

    delta.enable = true;

    signing = {
      key = "A10CE41E35455B76";
      signByDefault = true;
    };

    extraConfig = {
      init.defaultBranch = "main";
      pack = {
        windowMemory = "2g";
        packSizeLimit = "1g";
      };
    };
  };
}
