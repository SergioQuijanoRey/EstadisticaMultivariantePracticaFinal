# Práctica Final Estadística Multivariante - Estudio de la empleabilidad de estudiantes

## Breve descripción del problema

La base de datos usada se compone de métricas recogidas durante entrevistas de trabajo de pruebas a alumnos universitarios en las Filipinas. Además, en dicha base de datos, se recoge si el candidato es elegido o no para el hipotético puesto de trabajo. Dicha base de datos se encuentra en [Kaggle](https://www.kaggle.com/datasets/anashamoutni/students-employability-dataset). Los objetivos del trabajo son dos:

1. Construir un modelo de clasificación robusto para predecir la empleabilidad de los candidatos
2. Estudiar la posible falta de meritocracia en el proceso de selección, reflejado en la base de datos. Esto mediante el análisis exploratorio de los datos, el análisis del comportamiento de los modelos obtenidos y finalmante mediante el experimento adicional

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
