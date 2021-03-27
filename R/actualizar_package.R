#' Actualizar package
#'
#' Función que actualiza el package 'ayudantia.epg3308'.
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

    cargado <- FALSE

    if ('package:ayudantia.epg3308' %in% search()) {

        detach(name   = package:ayudantia.epg3308,
               unload = TRUE)

        cargado <- TRUE
    }

    utils::remove.packages(pkgs = 'ayudantia.epg3308',
                           lib  = .libPaths()[1])

    remotes::install_github(repo  = 'estebanrucan/ayudantia.epg3308',
                            lib   = .libPaths()[1],
                            force = TRUE)

    if (cargado) suppressPackageStartupMessages(require(ayudantia.epg3308))

}
