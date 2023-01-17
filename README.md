# Práctica Final Estadística Multivariante - Estudio de la empleabilidad de estudiantes

## Estructura del proyecto

- En `./src` tenemos el código en `R` para ejecutar el análisis de datos
    - El fichero `shell.nix` define, de forma declarativa, todas las dependencias para __ejecutar el *notebook* de `R`__
    - Usamos `just` (que se incluye en las dependencias de `shell.nix`) que administra todas las tareas, usando el fichero `./src/justfile`
    - Podemos mostrar todas las tareas con `nix-shell --run "just"`, tras habernos movido a ese directorio
- En `./memoria` tenemos las fuentes de `Latex` con las que escribimos la memoria de prácticas
    - Además, tenemos otro fichero `shell.nix` que define todas las dependencias para compilar las fuentes en un `PDF`
    - Volvemos a usar `just` con el fichero `./memoria/justfile. Moviendonos al directorio, podemos ejecutar la misma orden para mostrar todas las tareas: `nix-shell --run "just"`

## Archivos destacables

1. [Notebook con el código `Rmd`](https://github.com/SergioQuijanoRey/EstadisticaMultivariantePracticaFinal/blob/main/src/Notebook.Rmd)
2. [Notebook en formato HTML](https://github.com/SergioQuijanoRey/EstadisticaMultivariantePracticaFinal/blob/main/src/Notebook.html) ([descarga](https://github.com/SergioQuijanoRey/EstadisticaMultivariantePracticaFinal/releases/download/v1.0.0/Notebook.html))
3. [Memoria en formato PDF](https://github.com/SergioQuijanoRey/EstadisticaMultivariantePracticaFinal/blob/main/memoria/Document.pdf) ([descarga](https://github.com/SergioQuijanoRey/EstadisticaMultivariantePracticaFinal/releases/download/v1.0.0/Document.pdf))
