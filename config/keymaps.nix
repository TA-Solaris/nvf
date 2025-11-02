{
  vim = {
    keymaps = [
      {
        key = "<leader>e";
        mode = "n";
        silent = true;
        action = ":Neotree<CR>";
      }
      {
        key = "<C-n>";
        mode = "n";
        silent = true;
        action = ":Neotree toggle<CR>";
      }
      {
        key = "<leader>p";
        mode = "x";
        silent = true;
        action = "\"_dP";
        desc = "Paste without loss";
      }
      {
        key = "<leader>y";
        mode = ["x" "n" "v"];
        silent = true;
        action = "\"+y";
        desc = "Yank to clipboard";
      }
      {
        key = "<leader>d";
        mode = ["x" "n" "v"];
        silent = true;
        action = "\"+d";
        desc = "Delete to clipboard";
      }
    ];
  };
}
