{pkgs, ...}: {
  vim = {
    # For list of options see
    # https://notashelf.github.io/nvf/options.html

    # Add config directory to runtimepath to load custom lua files
    additionalRuntimePaths = [./config];

    lineNumberMode = "relNumber"; # relative numbers

    # Greeter
    dashboard.alpha = {
      enable = true;
      theme = "theta";
    };

    autopairs.nvim-autopairs.enable = true; # Autobrackets

    # Autocomplete
    autocomplete = {
      blink-cmp = {
        enable = true;
        friendly-snippets.enable = true;
        sourcePlugins.emoji.enable = true;
      };
    };

    filetree.neo-tree.enable = true; # Filetree

    treesitter.context.enable = true;

    telescope.enable = true;

    git = {
      enable = true;
      gitsigns.enable = true;
      neogit.enable = true;
    };

    # Debugging code
    debugger = {
      nvim-dap = {
        enable = true;
        ui.enable = true;
      };
    };

    extraPlugins = with pkgs.vimPlugins; {
      neotest-python = {
        package = neotest-python;
      };
      neotest-java = {
        package = neotest-java;
      };
      neotest-dotnet = {
        package = neotest-dotnet;
      };
      neotest = {
        package = neotest;
        setup = ''
          require("neotest").setup({
            adapters = {
              require("neotest-python"),
              require("neotest-java"),
              require("neotest-dotnet"),
            },
          })
        '';
        after = ["neotest-python" "neotest-java" "neotest-dotnet"];
      };
    };

    assistant = {
      chatgpt.enable = false;
      avante-nvim.enable = true;
    };

    utility = {
      diffview-nvim.enable = true;

      images = {
        image-nvim.enable = false;
        img-clip.enable = false;
      };
    };

    ui.noice.enable = true; # command bar

    comments.comment-nvim = {
      enable = true;
      setupOpts.mappings.basic = true;
    };

    options = {
      # 2-space indents
      tabstop = 2;
      softtabstop = 2;
      shiftwidth = 2;
      expandtab = true;
      autoindent = true;
      smartindent = true;
      breakindent = true;

      # Splitting
      splitbelow = true;
      splitright = true;

      # Undo
      undofile = true;
      undolevels = 10000;
      swapfile = false;
      backup = false;
    };
  };
}
