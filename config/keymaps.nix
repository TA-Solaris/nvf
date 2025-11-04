{
  vim = {
    # Help with remembering keybindings
    binds = {
      whichKey.enable = true;
      cheatsheet.enable = true;
    };

    git.gitsigns.mappings = {
      blameLine = "<leader>gb";
      diffProject = "<leader>gD";
      diffThis = "<leader>gd";
      nextHunk = null;
      previewHunk = null;
      previousHunk = null;
      resetBuffer = null;
      resetHunk = null;
      stageBuffer = null;
      stageHunk = null;
      toggleBlame = "<leader>gtb";
      toggleDeleted = null;
      undoStageHunk = null;
    };

    git.git-conflict.mappings = {
      both = "<leader>gob";
      none = "<leader>gon";
      ours = "<leader>goo";
      theirs = "<leader>got";
    };

    lsp.nvim-docs-view.mappings = {
      viewToggle = "<leader>hvt";
      viewUpdate = "<leader>hvu";
    };

    keymaps = [
      {
        key = "<leader>g";
        mode = "n";
        silent = true;
        action = "";
        desc = "+Git";
      }
      {
        key = "<leader>go";
        mode = "n";
        silent = true;
        action = "";
        desc = "+Conflict";
      }
      {
        key = "<leader>gt";
        mode = "n";
        silent = true;
        action = "";
        desc = "+Toggle";
      }
      {
        key = "<leader>a";
        mode = "n";
        silent = true;
        action = "";
        desc = "+Assistant";
      }
      {
        key = "<leader>d";
        mode = "n";
        silent = true;
        action = "";
        desc = "+Debug";
      }
      {
        key = "<leader>h";
        mode = "n";
        silent = true;
        action = "";
        desc = "+Help";
      }
      {
        key = "<leader>f";
        mode = "n";
        silent = true;
        action = "";
        desc = "+Find";
      }
      # Panes
      {
        key = "<C-n>";
        mode = "n";
        silent = true;
        action = ":Neotree toggle<CR>";
        desc = "Toggle Neotree";
      }
      {
        key = "<C-t>";
        mode = "n";
        silent = true;
        action = ":lua require(\"neotest\").summary.toggle()<CR>";
        desc = "Toggle Neotest";
      }
      {
        key = "<C-a>";
        mode = "n";
        silent = true;
        action = ":AvanteToggle<CR>";
        desc = "Toggle Avante";
      }
      # Help keymaps
      {
        key = "<leader>hh";
        mode = "n";
        silent = true;
        action = ":help<CR>";
        desc = "Open help";
      }
      {
        key = "<leader>hc";
        mode = "n";
        silent = true;
        action = ":checkhealth<CR>";
        desc = "Check health";
      }
      {
        key = "<leader>hT";
        mode = "n";
        silent = true;
        action = ":Tutor<CR>";
        desc = "Vim tutor";
      }
    ];
  };
}
