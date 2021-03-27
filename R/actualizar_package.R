#' Actualizar package
#'
#' Función que actualiza el package \code{ayudantia.epg3308}
#'
#' Debido a lo complicado que puede ser desinstalar un package y reinstalarlo. Automatizamos ese procesimiento con esta función.
#'
#' @author Esteban Rucán.
#'
#' @return Package \code{ayudantia.epg3308} actualizado a su versión más reciente.
#' @encoding UTF-8
#'
#' @import remotes
#'
#' @example actualizar_package()
#'
#' @export

actualizar_package <- function() {
    if ('package:ayudantia.epg3308' %in% search()) {
        detach(package:ayudantia.epg3308,
               unload = TRUE)
    }

    utils::remove.packages('ayudantia.epg3308',
                           .libPaths()[1])
    install_github('estebanrucan/ayudantia.epg3308',
                            lib = .libPaths()[1],
                            force = TRUE)
}
