#' Estructura básica de organización
#'
#' Puedes usar esta función para ordenar tu trabajo a través de crear carpetas
#' automáticamente en el directorio %$%  actual.
#'
#' La buena estructuración de un espacio de trabajo es muy útil para mantener el orden y
#' la legitividad de tu trabajo.
#'
#' @author Esteban Rucán.
#'
#' @return Carpetas en el directorio de trabajo.
#'
#' @encoding UTF-8
#'
#' @examples
#' getwd()                # Obtener directorio.
#' dir()                  # Revisa las carpetas que hay actualmente en el directorio.
#' generar_estructura()   # Crear las carpetas.
#' dir()                  # Revisa las carpetas creadas.
#'
#' @export

generar_estructura <- function() {
    dir.create('datasets')
    dir.create('datasets/datasets-procesados')
    dir.create('codigo')
    dir.create('enunciado')
    dir.create('figuras')
    dir.create('productos')
}
