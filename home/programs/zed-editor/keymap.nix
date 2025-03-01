{
  programs.zed-editor.userKeymaps = [
    # default
    {
      bindings = {
        # avoid  close everything
        "ctrl-shift-w" = "pane::CloseActiveItem";
      };
    }

    # editor specific keybindings
    {
      context = "VimControl && !menu";
      bindings = {
        # tabs
        "space 1" = ["pane::ActivateItem" 0];
        "space 2" = ["pane::ActivateItem" 1];
        "space 3" = ["pane::ActivateItem" 2];
        "space 4" = ["pane::ActivateItem" 3];
        "space 5" = ["pane::ActivateItem" 4];
        "space 6" = ["pane::ActivateItem" 5];
        "space 7" = ["pane::ActivateItem" 6];
        "space 8" = ["pane::ActivateItem" 7];
        "space 9" = ["pane::ActivateItem" 8];
        "[ b" = "pane::ActivatePrevItem";
        "] b" = "pane::ActivateNextItem";
        "[ B" = "pane::SwapItemLeft";
        "] B" = "pane::SwapItemRight";
        "space b d" = "pane::CloseActiveItem";
        "space b l" = "pane::CloseItemsToTheRight";
        "space b h" = "pane::CloseItemsToTheLeft";

        # nagivation
        # git
        "] h" = "editor::GoToHunk";
        "[ h" = "editor::GoToPrevHunk";

        # search
        "space f f" = "file_finder::Toggle";
        "space f g" = "pane::DeploySearch";

        # multiple cursors
        "ctrl-n" = "editor::AddSelectionBelow";
        "ctrl-p" = "editor::SelectNext";

        # modification
        "space c r" = "editor::Rename";
        "space c a" = "editor::ToggleCodeActions";

        # tasks
        "space g g" = [
          "task::Spawn"
          {
            task_name = "start lazygit";
            reveal_target = "center";
          }
        ];
      };
    }
    # terminal
    {
      context = "Terminal";
      bindings = {
        "ctrl-shift-w" = "pane::CloseAllItems";
      };
    }

    # project settings
    {
      context = "Workspace";
      bindings = {
        "ctrl-shift-e" = "project_panel::ToggleFocus";
      };
    }
    {
      context = "ProjectPanel && not_editing";
      bindings = {
        "n" = "project_panel::NewFile";
        "shift-n" = "project_panel::NewDirectory";
        "x" = "project_panel::Cut";
        "y" = "project_panel::Copy";
        "p" = "project_panel::Paste";
        "r" = "project_panel::Rename";
        "d" = "project_panel::Delete";
      };
    }
  ];
}
