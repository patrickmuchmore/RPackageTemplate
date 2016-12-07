/* See http://r-pkgs.had.co.nz/man.html#text-formatting for a list of
 formatting tags that can be used in R documentation.*/

/* we only include RcppArmadillo.h which pulls Rcpp.h in for us*/
#include "RcppArmadillo.h"

/* via the depends attribute we tell Rcpp to create hooks for
 RcppArmadillo so that the build process will know what to do*/
// [[Rcpp::depends(RcppArmadillo)]]

/* via the exports attribute we tell Rcpp to make this function
 available from R*/

//' A "hello world" function
//'
//' A "hello world" function using the Armadillo library.
//'
//' @return
//' A 3x3 matrix with 7 on the diagonal and zero elsewhere.
//' @export
// [[Rcpp::export]]
arma::mat rcpparma_hello_world() {
    arma::mat m1 = arma::eye < arma::mat > (3, 3);
    arma::mat m2 = arma::eye < arma::mat > (3, 3);

    return m1 + 3 * (m1 + m2);
}

//' Calculates the inner product
//'
//' Calculates the inner product of a vector using the Armadillo library.
//'
//' @param x
//' A numeric vector of length \code{n}.
//' @return
//' The scalar \eqn{x'x}.
//' @export
// [[Rcpp::export]]
double rcpparma_innerproduct(const arma::colvec & x) {
    double v = arma::as_scalar(x.t() * x);
    return v;
}

//' Calculates the outer product
//'
//' Calculates the outer product of a vector using the Armadillo library.
//'
//' @param x
//' A numeric vector x of length \eqn{n}.
//' @return
//' The \eqn{nxn} matrix \eqn{xx'}.
//' @export
// [[Rcpp::export]]
arma::mat rcpparma_outerproduct(const arma::colvec & x) {
    arma::mat m = x * x.t();
    return m;
}

//' Calculates both products
//'
//' Calls both the inner and outer product functions, returning a list.
//'
//' @param x
//' A numeric vector of length \eqn{n}.
//' @return
//' A named list with two elements, the scalar inner and the matrix outer.
//' @export
// [[Rcpp::export]]
Rcpp::List rcpparma_bothproducts(const arma::colvec & x) {
    double ip = rcpparma_innerproduct(x);
    arma::mat op = rcpparma_outerproduct(x);
    return Rcpp::List::create(Rcpp::Named("inner") = ip, Rcpp::Named("outer") =
            op);
}
