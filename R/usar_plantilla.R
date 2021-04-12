#' Crear Plantilla de R Markdown
#'
#' Puedes usar esta función para crear una plantilla de RMarkdown en el directorio de trabajo actual.
#'
#' La buena estructuración de un documento mejora la comprensión del mismo.
#'
#' @author Esteban Rucán.
#'
#' @return Archivo con extensión \code{.Rmd}.
#'
#' @import bslib
#'
#' @encoding UTF-8
#'
#' @examples usar_plantilla()
#'
#' @import bslib
#'
#' @importFrom usethis use_template
#'
#' @importFrom utils install.packages
#'
#' @export

usar_plantilla <- function() {
    numero <- numero_de_ayudantia()
    nombre <- paste0('epg3308_ayudantia-', numero, '.Rmd')

    stopifnot(!file.exists(nombre))

    options("yaml.eval.expr" = TRUE)

    use_template('plantilla_ayudantias.Rmd',
                 save_as = nombre,
                 package = 'ayudantia.epg3308',
                 open = interactive())
}
