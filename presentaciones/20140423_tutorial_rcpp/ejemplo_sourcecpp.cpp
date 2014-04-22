#include<Rcpp.h>

using namespace Rcpp;

// [[Rcpp::export]]
int g(int n) {
  if (n < 2) return(n);
  return(g(n-1) + g(n-2));
}

/*** R
# Codigo en R
g(10)
***/