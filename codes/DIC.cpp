
// [[Rcpp::depends(RcppArmadillo)]]

#include <RcppArmadillo.h>
#include <RcppArmadilloExtensions/sample.h>
#include <Rcpp.h>

using namespace Rcpp;
using namespace arma;
using namespace std;

// Function to calculate DIC for LDA model
// [[Rcpp::export]]
double DIC_LDA(arma::mat data_mat, arma::cube beta_chain, arma::cube theta_chain, List w) {
  
  int M = theta_chain.n_slices;
  int D = max(data_mat.col(1));
  int K = beta_chain.n_rows;
  int V = beta_chain.n_cols;
  
  
  Rcout << "Calculating mean D(theta) ..." << std::endl;
  
  double mean_D_theta = 0;
  for (int m = 0; m < M; m++) {
    Rcout << m << std::endl;
    for (int d = 0; d < D; d++) {
      arma::rowvec wd = w[d];
      int Nd = wd.size();
      for (int n = 0; n < Nd; n++) {
        int word = wd[n];
        int iter = m;
        arma::cube beta_cube = beta_chain(0, word, iter, size(K,1,1));
        arma::rowvec beta_vec = arma::trans(beta_cube.slice(0).col(0));
        arma::cube theta_cube = theta_chain(d,0,iter,size(1,K,1));
        arma::rowvec theta_vec = theta_cube.slice(0).row(0);
        double dot_prod = dot(beta_vec, theta_vec);
        mean_D_theta += log(dot_prod);
      }
    }
  }
  
  mean_D_theta = -2 * mean_D_theta / M;
  
  arma::mat beta_barra(K,V, fill::zeros);
  for(int k = 0; k < K; k++){
    for(int v = 0; v < V; v++){
      arma::rowvec beta_k_v = beta_chain(k,v,0, size(1,1,M));
      beta_barra(k,v) = mean(beta_k_v);
    }
  }
  
  arma::mat theta_barra(D,K, fill::zeros);
  for(int d = 0; d < D; d++){
    for(int k = 0; k < K; k++){
      arma::rowvec theta_d_k = theta_chain(d,k,0, size(1,1,M));
      theta_barra(d,k) = mean(theta_d_k);
    }
  }
  
  Rcout << "Calculating D(mean(theta)) ..." << std::endl;
  double D_theta_mean = 0;
  for (int d = 0; d < D; d++) {
    arma::rowvec wd = w[d];
    int Nd = wd.size();
    for (int n = 0; n < Nd; n++) {
      
      D_theta_mean += log(dot(beta_barra.col(wd(n)),theta_barra.row(d)));
    }
  }
  
  D_theta_mean = -2 * D_theta_mean;
  
  double p_D = mean_D_theta - D_theta_mean;
  
  double DIC = p_D + mean_D_theta;
  
  Rcout << "Done." << std::endl;
  return DIC;
  
}
