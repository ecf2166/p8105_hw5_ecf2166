pwr_1sampt = function(mu) {
  samp = rnorm(n = 30, mean = mu, sd = 5)
  
  return_df = 
    t.test(samp, mu = 0) |> 
    broom::tidy() |> 
    select(mu_hat = estimate, p_value = p.value)
  
  return_df
}