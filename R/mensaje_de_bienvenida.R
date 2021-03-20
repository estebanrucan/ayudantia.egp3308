#' Bienvenida al Curso EPG3308
#'
#' Muestra un mensaje de bienvenida
#'
#' Esta función ha sido diseñada para darles la bienvenida a los
#' estudiantes del Curso EPG3308 y que el primer package que carguen
#' les muestre un lindo mensaje :D
#'
#' @author Esteban Rucán
#'
#' @return Mensaje de bienvenida
#' @export
#'
#' @examples
#' \dontrun{
#'      mensaje_de_bienvenida()
#' }

mensaje_de_bienvenida <- function() {
    writeLines(
        c(
            '¡Sean muy bienvenid@s al curso EPG3308!',
            'Haremos lo posible para que las ayudantias sean',
            'una interesante fuente de aprendizaje.',
            '¡Recuerden preguntarnos todas sus dudas!',
            'Atentamente: sus ayudantes Esteban y Benjamin.'
        )
    )
}
