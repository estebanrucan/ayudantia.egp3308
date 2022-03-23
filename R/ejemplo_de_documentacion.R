#' Ejemplo de Documentación
#'
#' Ejemplo para los estudiantes
#'
#' Esta función está hecha para que los estudiantes vean un ejemplo de documentación
#'
#' @author Esteban Rucán
#'
#' @return Mensaje con un consejo
#' @encoding UTF-8
#'
#' @examples ?ejemplo_de_documentacion
#'
#' @export

ejemplo_de_documentacion <- function() {
    writeLines(
        c(
            'Observa la documentaci\u00F3n de esta funci\u00F3n',
            'escribiendo en la consola "?ayudantia.epg3308::ejemplo_de_documentacion"'
        )
    )
}
