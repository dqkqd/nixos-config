{pkgs, ...}: {
  programs.bat = {
    enable = true;
    config = {
      map-syntax = [
        "flake.lock:JSON"
      ];
    };
    syntaxes = {
      just = {
        src = pkgs.fetchFromGitHub {
          owner = "nk9";
          repo = "just_sublime";
          rev = "08bbc62e9e77c82fb0fa6cabc0630cb5cc4bcd0e";
          hash = "sha256-wSZe0uklnH3SooFR8RqAeGj3WL3W2cqNeSH/nQS3/4s=";
        };
        file = "Syntax/Just.sublime-syntax";
      };
    };
  };
}
