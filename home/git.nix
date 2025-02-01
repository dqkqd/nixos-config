{
  config,
  pkgs,
  ...
}: {
  programs.git = {
    enable = true;
    userName = "Khanh Duong Quoc";
    userEmail = "dqkqdlot@gmail.com";
  };
}
