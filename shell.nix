{ pkgs ? import <nixpkgs> {}}:
with pkgs;
# Uso este archivo para tener acceso a pdflatex
# Define un entorno linux de forma declarativa
let
    # Pinning, because last version of the texlive enviroment is broken
    pinned_pkgs = import (builtins.fetchTarball {
        name = "NixOS_Stable_05_September_2022";
        url = "https://github.com/nixos/nixpkgs/archive/7d7622909a38a46415dd146ec046fdc0f3309f44.tar.gz";
        sha256 = "016dcmy9gkmrzd5gsmvz4rd6gh5phf2kg7jf8g2y276v5km50nwf";
    }) {};

    # Declare the latex enviroment (base enviroment plus additional packages)
    # We use the pinned pkgs just here
    custom_tex_env = (pinned_pkgs.texlive.combine {
        # Base latex env
        inherit (pinned_pkgs.texlive) scheme-medium

        # Se pueden especificar paquetes adicionales, como amsmath
        ;
    });


    r_custom_env = rWrapper.override{ packages = with rPackages; [
        # Para leer el fichero excel
        readxl

        # Para tener acceso al LSP de R
        languageserver
        languageserversetup
    ]; };
in
mkShell {
    buildInputs = with pkgs; [
        # TODO -- remove this dependency
        zsh

        # Build tool for managing latex tasks
        just

        pandoc

        # Use our latex enviroment
        custom_tex_env

        # Use our R enviroment
        r_custom_env

    ];

    shellHook = ''
    '';
}
