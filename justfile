# Este archivo define las distintas tareas
# Por ejemplo, compilar el archivo RMarkdown en distintos formatos, limpiar archivos temporales, ...

NOTEBOOK := "./src/Notebook.rmd"
BROWSER := "chromium"
PDF_VIEWER := "evince"

# Receta por defecto que muestra todas las recetas disponibles
default:
    @just --list

# Compila el RMarkdown a un formato concreto
compile FORMATO = "html_document":
    R -e "rmarkdown::render('{{NOTEBOOK}}', output_format = '{{FORMATO}}')"

# Muestra en un navegador el fichero compilado
# Si no esta ya compilado, se realiza dicha compilacion
view_browser: (compile "html_document")
    {{BROWSER}} "{{without_extension(NOTEBOOK)}}.html"

view_pdf: (compile "pdf_document")
    {{PDF_VIEWER}} "{{without_extension(NOTEBOOK)}}.pdf"
