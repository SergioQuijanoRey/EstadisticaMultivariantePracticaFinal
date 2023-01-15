{ pkgs ? import <nixpkgs> {}}:
with pkgs;
let
    # Pinning, because last version of the texlive enviroment is broken
    # pinned_pkgs = import (builtins.fetchTarball {
    #     name = "NixOS_Stable_05_September_2022";
    #     url = "https://github.com/nixos/nixpkgs/archive/7d7622909a38a46415dd146ec046fdc0f3309f44.tar.gz";
    #     sha256 = "016dcmy9gkmrzd5gsmvz4rd6gh5phf2kg7jf8g2y276v5km50nwf";
    # }) {};

    # Declare the latex enviroment (base enviroment plus additional packages)
    # We use the pinned pkgs just here
    custom_tex_env = (pkgs.texlive.combine {
        # Base latex env
        inherit (pkgs.texlive) scheme-medium

        # Here goes additional packages, for example, asmath
        enumitem
        tocbibind
        ;
    });
in
mkShell {
    buildInputs = with pkgs; [
        # Sometimes we want to enter the enviroment with the shell
        zsh

        # Build tool for managing latex tasks
        just

        # Use our latex enviroment
        custom_tex_env
    ];

    shellHook = ''
    '';
}
