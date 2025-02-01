{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    history.size = 10000;
    historySubstringSearch.enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "rust"
        "vi-mode"
        "fzf"
        "zoxide"
      ];
    };
  };
}
