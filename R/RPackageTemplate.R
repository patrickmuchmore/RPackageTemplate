# An R package template illustrating the use of various packages
# 
# Author: muchmore
###############################################################################


#' An R package template
#' 
#' An R package template illustrating the use of various packages including:
#' \code{\link[Rcpp]{Rcpp}}, \code{\link[RcppArmadillo]{RcppArmadillo}}, 
#' \code{\link[devtools]{devtools}}, \code{\link[roxygen2]{roxygen2}}, 
#' and \code{\link[testthat]{testthat}}.
#'
#' @name 
#' RPackageTemplate
#' @docType 
#' package
#' @importFrom 
#' Rcpp evalCpp
#' @useDynLib 
#' RPackageTemplate
NULL

#' A "hello world" function
#' 
#' A "hello world" function used to test the 
#' \code{\link{rcpparma_hello_world}} implementation.
#' 
#' @return
#' A 3x3 matrix with 7 on the diagonal and zero elsewhere.
#' @export
r_hello_world = function() {
    return(7*diag(3))
}
