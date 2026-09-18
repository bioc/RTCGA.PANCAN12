.onLoad <- function(libname, pkgname) {
	vig_list = tools::vignetteEngine(package = 'knitr')
	vweave <- vig_list[['knitr::knitr']][c('weave')][[1]]
	vtangle <- vig_list[['knitr::knitr']][c('tangle')][[1]]
	tools::vignetteEngine(pkgname, weave = vweave, tangle = vtangle,
												pattern = "[.]Rmd$", package = pkgname)
	#register_vignette_engines(pkgname)
}
.onAttach <- function(libname, pkgname) {
    msg <- sprintf(
        "Package '%s' is deprecated and will be removed from Bioconductor
         version %s", pkgname, "3.24")
    .Deprecated(msg=paste(strwrap(msg, exdent=2), collapse="\n"))
}
