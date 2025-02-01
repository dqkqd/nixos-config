{pkgs, ...}: {
  programs.zsh.enable = true;

  users.users.dqk = {
    isNormalUser = true;
    extraGroups = ["wheel"]; # Enable ‘sudo’ for the user.
    shell = pkgs.zsh;
  };
}
