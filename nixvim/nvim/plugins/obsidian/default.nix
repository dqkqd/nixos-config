{
  plugins.obsidian = let
    workspace-path = "~/workspace/notes";
  in {
    enable = true;
    lazyLoad.settings = {
      ft = "markdown";
      # https://github.com/epwalsh/obsidian.nvim?tab=readme-ov-file#using-lazynvim
      event.__raw = ''
        {
          "BufReadPre " .. vim.fn.expand("${toString workspace-path}") .. "/*.md",
          "BufNewFile " .. vim.fn.expand("${toString workspace-path}") .. "/*.md",
        }
      '';
    };
    settings = {
      completion.blink = true;
      picker.name = "fzf-lua";
      workspaces = [
        {
          name = "note";
          path = workspace-path;
        }
      ];
      notes_subdir = "inbox";
      new_notes_location = "notes_subdir";
      templates.subdir = "templates";
      note_id_func =
        # Lua
        ''
          function(title)
            -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
            -- In this case a note with the title 'My new note' will be given an ID that looks
            -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
            local suffix = ""
            if title ~= nil then
              -- If title is given, transform it into valid file name.
              suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
            else
              -- If title is nil, just add 4 random uppercase letters to the suffix.
              for _ = 1, 4 do
                suffix = suffix .. string.char(math.random(65, 90))
              end
            end
            return tostring(os.time()) .. "-" .. suffix
          end
        '';
      attachments = {
        img_folder = "assets/imgs";
        img_name_func.__raw = ''
          function()
            -- Prefix image names with timestamp.
            return string.format("%s-", os.time())
          end
        '';
        img_text_func.__raw = ''
          function(client, path)
            path = client:vault_relative_path(path) or path
            return string.format("![%s](%s)", path.stem, path)
          end
        '';
      };
    };
  };
}
