#' Bienvenida al Curso EPG3308
#'
#' Muestra un mensaje de bienvenida
#'
#' Esta función ha sido diseñada para darles la bienvenida a los estudiantes del Curso EPG3308 y que el primer package que carguen les muestre un lindo mensaje.
#'
#' @author Esteban Rucán
#'
#' @return Mensaje de bienvenida
#' @encoding UTF-8
#'
#' @examples
#' mensaje_de_bienvenida()
#'
#' @export

mensaje_de_bienvenida <- function() {
    writeLines(
        c(
            '\u00A1Sean muy bienvenid@s al curso EPG3308!',
            'Haremos lo posible para que las ayudant\u00EDas sean',
            'una interesante fuente de aprendizaje.',
            '\u00A1Recuerden preguntarnos todas sus dudas!',
            'Atentamente: sus ayudantes Esteban y Vanesa.'
        )
    )
}
