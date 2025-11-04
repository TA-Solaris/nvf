{
  vim = {
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

    keymaps = [
      {
        key = "<C-n>";
        mode = "n";
        silent = true;
        action = ":Neotree toggle<CR>";
      }
      {
        key = "<C-a>";
        mode = "n";
        silent = true;
        action = ":AvanteToggle<CR>";
      }
    ];
  };
}
