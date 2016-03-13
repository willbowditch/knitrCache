#' loadKnitrCache
#'
#' Loads a knitr cache into the current global enviroment
#'
#' When a knitr script is run with cache enabled all data is saved in a given directory. However, this is not easily loaded into an active R session for easy manipulation when working on scripts.
#'
#'  This function allows you to load this data into the current R session. Simply call loadKnitrCache('directory/containing/cache/').
#'
#'   All data is 'lazyLoaded' meaning that R doesn't actually pull the data into memory until you begin working with it.
#'
#' @param d A directory containing a knitr cache
#'
#' @return loads entire cache into global enviroment (lazy loading)
#' @export
#'
#' @examples loadKnitrCache('~/directory/containing/cache/')

loadKnitrCache <- function(d){
  require(stringr)

  names<- dir(d, pattern = '*.rdx', full.names = T)
  names<- str_replace(names, '.rdx', '')

  for(x in 1:length(names)){
    lazyLoad(names[x], envir = .GlobalEnv)
  }

  # Clean up
  rm(names)
  rm(d)
}

