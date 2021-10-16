library(tidyverse)
library(modelr)

# Exercise 1
#prints dataset
heights

# Exercise 2
#formulas for modeling income with:
incomeForm <- formulas(~income,
                  h = ~height, #height
                  hW = ~height*weight, #height * weight
                  all = ~.) #linear combination of all variables
incomeForm

# Exercise 3
#removes rows containing NA’s & fits linear model w/ above formulas
iii <- heights %>%
  na.omit() %>%
  fit_with(lm, incomeForm)
iii

# Exercise 4
#calculates RMSE
iv <- na.omit(heights)
iii %>%
  map(rmse, data = iv)

# Exercise 5
#adds residuals to data and plots distribution
iv %>%
  lift_dl(gather_residuals)(data = ., iii) %>%
  ggplot(aes(resid, color = model)) +
  geom_density(size = 1) +
  theme_bw()