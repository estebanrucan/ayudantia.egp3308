#' Crear Plantilla de R Markdown
#'
#' Función que indica el número de ayudantía
#'
#' Esta función está pensada para la plantilla de R Markdown de las ayudantías
#'
#' @author Esteban Rucán.
#'
#' @return Archivo con extensión \code{.Rmd}.
#'
#' @encoding UTF-8

numero_de_ayudantia <- function() {
    fechas <- as.Date(
        c('2021-03-20',
          '2021-03-27',
          '2021-04-10',
          '2021-04-17',
          '2021-04-23',
          '2021-05-08',
          '2021-05-29',
          '2021-06-05',
          '2021-06-12',
          '2021-06-19',
          '2021-06-25',
          '2021-07-03',
          '2021-07-10'
        )
    )

    names(fechas) <- c(paste0(0, 1:9), 10:13)

    return(names(rev(fechas[fechas <= Sys.Date()])[1]))
}
