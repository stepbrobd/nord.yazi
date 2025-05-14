{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    parts.url = "github:hercules-ci/flake-parts";
    parts.inputs.nixpkgs-lib.follows = "nixpkgs";
    systems.url = "github:nix-systems/default";
  };

  outputs = inputs: inputs.parts.lib.mkFlake { inherit inputs; } {
    systems = import inputs.systems;

    perSystem = { lib, pkgs, system, ... }: {
      _module.args = {
        lib = builtins // inputs.parts.lib // inputs.nixpkgs.lib;
        pkgs = import inputs.nixpkgs { inherit system; };
      };

      packages.default = pkgs.yaziPlugins.mkYaziPlugin {
        pname = "nord.yazi";
        version = "0-unstable-2025-05-14";
        src = ./.;
        meta = {
          description = "nordic yazi";
          homepage = "https://github.com/stepbrobd/nord.yazi";
          license = lib.licenses.mit;
          maintainers = with lib.maintainers; [ stepbrobd ];
        };
      };

      formatter = pkgs.writeShellScriptBin "formatter" ''
        ${lib.getExe pkgs.nixpkgs-fmt} .
        ${lib.getExe pkgs.stylua} main.lua
        ${lib.getExe pkgs.taplo} format flavor.toml
      '';
    };
  };
}
