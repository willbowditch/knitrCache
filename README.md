# knitrCache
R Package for easy loading of cached data produced by knitr into R session.

## To install
`devtools::install_git('https://github.com/willbowditch/knitrCache')`

This depends on the devtools package, if you don't have it run this beforehand
```
install.packages('devtools')
require(devtools)
```
## Usage
To load all variables from a knitr cache `loadKnitrCache('~/path/to/directory/')`
