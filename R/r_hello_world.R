#
# 
# Author: muchmore
###############################################################################


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

