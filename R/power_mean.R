#' Power Mean
#'
#' Calcular la Media Generalizada de un vector y potencia \code{m}.
#'
#' Las medias generalizadas, también conocidas como medias de Hölder, son una abstracción de las medias cuadráticas, aritméticas, geométricas y armónicas. Se definen y agrupan a través de la siguiente expresión:
#' (1 / n * sum(x ^ m)) ^ (1 / m).
#'
#' @author Esteban Rucán.
#'
#' @param x Un vector con valores numéricos.
#' @param m Potencia de la media generalizada. Si es 0, hace referencia a la media geométrica.
#' @param na.rm Valor Lógico, si es \code{TRUE}, excluye \code{NA} de los cálulos.
#'
#' @return Media generalizada según la potencia \code{m}.
#' @encoding UTF-8
#'
#' @examples power_mean(x = c(1:100, NA), m = 2, na.rm = TRUE)
#' power_mean(3:10, 2, FALSE)
#' power_mean(50:60, 0, FALSE)
#'
#' @export

power_mean <- function(x, m, na.rm) {
    if (is.character(x)) stop('El vector debe ser num\u00E9rico')
    if (length(x) == 0) stop('El vector debe al menos un elemento')

    largo_x <- length(x)

    if (m == 0) prod(x) ^ (1 / largo_x)
    else (1 / largo_x * sum(x ^ m)) ^ (1 / m)
}

