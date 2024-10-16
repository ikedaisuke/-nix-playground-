let
  env = with pkgs; {
    NIX_EXPERIMENTAL_FEATURES = "nix-command flakes";
  };
in
{ description = "-nix-playground-";
  inputs = {
    nixpkgs = pkgs;
  };
  outputs = {
    self = {
      devShell = mkShell {
        buildInputs  = with pkgs; [];
        environment = env;
      };
    };
  };
}
