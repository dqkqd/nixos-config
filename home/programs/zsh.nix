{
  programs.zsh = {
    enable = true;
    enableCompletion = true;

    autosuggestion = {
      enable = true;
      strategy = [
        "history"
        "completion"
        "match_prev_cmd"
      ];
    };

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

    # init direnv: https://github.com/nix-community/nix-direnv/wiki/Shell-integration
    initExtra = ''
      nixify() {
        if [ ! -e ./.envrc ]; then
          echo "use nix" > .envrc
          direnv allow
        fi
        if [[ ! -e shell.nix ]] && [[ ! -e default.nix ]]; then
          cat > default.nix <<'EOF'
      with import <nixpkgs> {};
      mkShell {
        nativeBuildInputs = [
          bashInteractive
        ];
      }
      EOF
      ''\$EDITOR default.nix
        fi
      }

      flakify() {
        if [ ! -e flake.nix ]; then
          nix flake new -t github:nix-community/nix-direnv .
        elif [ ! -e .envrc ]; then
          echo "use flake" > .envrc
          direnv allow
        fi
      ''\$EDITOR flake.nix
      }

      theme_switcher() {
        local generations=("''\${(@f)''\$(home-manager generations)}")
        for generation in "''\${generations[@]}"
        do
          local components=(''\${=generation})
          local component_path=''\${components[-1]}
          local theme_path="''\$component_path/specialisation/''\$1"
          if [[ -d $theme_path ]]; then
            echo "switch to $1 theme"
            $theme_path/activate
            return
          fi
        done

        echo "cannot find $1 theme"
      }
    '';
  };
}
