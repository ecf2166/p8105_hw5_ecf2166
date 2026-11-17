#' 1-Sample T-test simulation (for finding power)
#'
#' takes the population mean, simulates a sample (n=30, sd=5),
#' and returns the estimated mean and p-value for a 1-sample t-test of H0: mu = 0
#'
#' @param mu # true population mean
#'
#' @returns a 1-row tibble with mu_hat and p_value
#' 

sim_1sampt = function(mu) {
  samp = rnorm(n = 30, mean = mu, sd = 5)
  
  return_df = 
    t.test(samp, mu = 0) |> 
    broom::tidy() |> 
    select(mu_hat = estimate, p_value = p.value)
  
  return_df
}