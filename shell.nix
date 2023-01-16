{ pkgs ? import <nixpkgs> {}}:
with pkgs;
# Uso este archivo para declarar todas las dependencias de R necesarias para
# correr el notebook
let
    r_custom_env = rWrapper.override{ packages = with rPackages; [
        # Para leer el fichero excel
        readxl

        # Para mostrar graficos y para hacer interpolacion de strings
        tidyr
        ggplot2

        # Para ver la matriz de correlacion como un grafico de barras
        lares

        # Para estandarizar training / test sin hacer data snooping
        # Tambien para la matriz de confusion
        # Tambien lo usamos para k-fold Cross Validation
        caret

        # Para mostrar algunas visualizaciones sobre PCA
        factoextra

        # Para analizar el supuesto de normalidad multivariante
        MVN

        # Para analizar la homogeneidad de la varianza
        biotools

        # Para usar el modelo xgboost
        xgboost

        # Para tener acceso al LSP de R
        languageserver
        languageserversetup
    ]; };
in
mkShell {
    buildInputs = with pkgs; [
        # Algunas veces necesitamos acceder a la consola
        zsh

        # Para poder ejecutar las tareas especificadas en `justfile`
        just

        # Rmarkdown tiene esta dependencia
        pandoc

        # Entorno customizado de R, con todos los paquetes necesarios
        r_custom_env
    ];

    shellHook = ''
    '';
}
