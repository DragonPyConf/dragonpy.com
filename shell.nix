let
  nixpkgs = builtins.fetchTarball {
    # https://github.com/NixOS/nixpkgs/tree/nixos-19.09 on 2020-01-12
    url = "https://github.com/nixos/nixpkgs/archive/f7d050ed4e3af90502c88bf0ae1fef62dcbde265.tar.gz";
    sha256 = "0fqs1z9q4zz938n6i32vh2sqrkk9yp15bk6kxpy8yrh3bxi2vqz9";
  };
  pkgs = import nixpkgs {
    config = { allowUnfree = true; };
    overlays = [
      (import ./jekyll-sassc-patch.nix)
    ];
  };
in

pkgs.mkShell {
  name = "dev-shell";
  buildInputs = with pkgs; [
    gitMinimal
    nodejs-10_x
    nodePackages.gulp
    jekyll
    python27Full
  ]

  # Some npm dependencies have a few extra requirements on Darwin (MacOS)
  ++ lib.optionals pkgs.stdenv.isDarwin [
    pkgs.darwin.apple_sdk.frameworks.CoreServices
  ]
  ;
}
