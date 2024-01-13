# Creating a data frame 'dados' with factors 'linhas' and 'bloco', 
# and a continuous variable 'zinco'. This data seems to be designed for an ANOVA analysis
# to test the effects of 'linhas' and 'bloco' on 'zinco'.
dados <- data.frame(
  linhas = as.factor(c(1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4)),
  bloco = as.factor(c(1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4)),
  zinco = c(106.3, 39.8, 93, 155.7, 72.5, 104.1, 68, 61.3, 124.9, 41.4, 65.5, 50.7,
            37.5, 100.8, 82.3, 108.2, 55.6, 88.2, 132.5, 77.9)
)

# Fitting a linear model with 'zinco' as the response variable 
# and 'bloco' and 'linhas' as the explanatory variables.
mod <- lm(zinco ~ bloco + linhas, data = dados)

# Performing an ANOVA test on the linear model to evaluate the effect of 'bloco' and 'linhas' on 'zinco'.
anova_result <- anova(mod)

# Printing the results of the ANOVA test.
print(anova_result)

