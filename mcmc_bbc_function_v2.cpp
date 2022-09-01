// [[Rcpp::depends(RcppArmadillo)]]

#include <RcppArmadillo.h>
#include <Rcpp.h>

using namespace Rcpp;
using namespace arma;

// This is a simple example of exporting a C++ function to R. You can
// source this function into an R session using the Rcpp::sourceCpp 
// function (or via the Source button on the editor toolbar). Learn
// more about Rcpp at:
//
//   http://www.rcpp.org/
//   http://adv-r.had.co.nz/Rcpp.html
//   http://gallery.rcpp.org/
//

// [[Rcpp::export]]
NumericVector timesTwo(NumericVector x) {
  return x * 2;
}

// [[Rcpp::export]]
double add ( double x , double y , double z ) {
  double sum = x + y + z ;
  return sum ;
}

// [[Rcpp::export]]
double sumC ( NumericVector x ) {
  double soma = x [0];
  int n = x . size () ;
  int i =1;
  while (i < n ) {
    double soma = soma + x [ i ];
    i = i +1;
  }
  return soma ;
}

// [[Rcpp::export]]
double sumC_correto ( NumericVector x ) {
  double soma = x [0];
  int n = x . size () ;
  int i =1;
  while (i < n ) { 
    soma = soma + x [i];
    i = i +1;
  }
  return soma ;
}

// [[Rcpp::export]]
Rcpp::List mcmc_bbc_cpp( arma::mat data,
                         int K){

  // Number of words in vocabulary
  int V = data.col(0).max();
  
  // Number of documents
  int D = data.col(1).max();
  
  // Number of words in each document
  NumericVector N(D);
  
  // Define N[[d]] for each document d
  uvec lines_document_d;
  for(int d=1; d<=D; d++ ){
    lines_document_d = find(data.col(1) == d);
    //N[d] = sum( data.col(2).elem(lines_document_d) );
    N[d-1] = sum( data.col(2) );
  }

  // Inicializing hyperparameters
  NumericVector alpha(K);
  NumericVector eta(V);

  for (int i = 0; i <= K; i++)
  {
    alpha[i] = 1;
    eta[i] = 1;
  }
  
  // Inicializing parameters
  NumericMatrix beta(K,V);

  for (int i = 0; i < K; i++)
  {
    for (int j = 0; j < V; j++)
    {
      beta[i][j] = 1.0/V;
    }
  }
  
  for (int i = 0; i < count; i++)
  {
    for (int j = 0; j < count; j++)
    {
      theta[i][j] = 1.0/K;
    }
    
  }

  NumericVector z(D)

  for (int i = 0; i < D; i++)
  {
    z[i] = list(1);
  }

  for (int d = 0; d < D; d++)
  {
    // dúvida //
  }
  
  NumericVector w(D)

  for (int i = 0; i < D; i++)
  {
    w[i] = List::create(list(1))
  }
  // dúvida //
  

  int beta_chain = 0;
  int theta_chain = 0;
  
  Rcpp::List lista=Rcpp::List::create(Rcpp::Named("theta")=theta_chain,
                                      Rcpp::Named("document_d")=lines_document_d,
                                      Rcpp::Named("N") = N);
  
  return lista;
  
}

// You can include R code blocks in C++ files processed with sourceCpp
// (useful for testing and development). The R code will be automatically 
// run after the compilation.
//

/*** R
mcmc_bbc_cpp( data = as.matrix(data), K = 10 )
*/

