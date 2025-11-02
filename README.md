# TA-Solaris' NVIM using NVF

This is a Repo for my custom NVIM.

## Getting started

There are a variety of ways of using this flake.

### One Time

You can run this config with the following command:

```bash
nix run github:TA-Solaris/nvf#default
```

### With Home Manager and Flakes

In flake.nix:

```bash
inputs = {
  ...
  nvf.url = "github:TA-Solaris/nvf"
}
```

In Home.nix:

```bash
home.packages = {
  inputs.nvf.packages.${pkgs.system}.default
}
```

## Updating

### With Flakes

```bash
nix flake lock --update-input nvf
```

## Current Supported Systems

Other systems may or may not work. They need to be added to the flake. Here are the ones tested:

- `x86_64-linux`
- `aarch64-darwin`

## Sources

Took a lot of inspiration for this flake from [SynHD900](https://github.com/SynHD900/nix-nvim).

