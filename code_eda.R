# prb = Percentage Relative Bias
# sb = Standardized Bias
# mcsd = Monte Carlo Standard Deviation
# sig = Significance Flags (used to compute power and Type-I error rates)
# cic = Confidence Interval Coverage
# ciw = Average Confidence Interval Width
# data gen equation: Y = 1.0 + 0.33X + 0.33Z 1 + 0.33Z 2 + ε

#import libraries
library(ggplot2)

#import data
all_data <- readRDS("data/masked_outcome_measures.rds")
data_prb <- all_data$prb
data_mcsd <- all_data$mcsd

#number of conditions per column in the data 
summary(data_prb[1:7])
summary(data_mcsd[1:7])

ggplot(data_prb, aes(x)) + geom_density(aes(col=a))
# ggplot(data_prb, aes(x)) + geom_density(aes(col=b))
# ggplot(data_prb, aes(x)) + geom_density(aes(col=c))
# ggplot(data_prb, aes(x)) + geom_density(aes(col=d))
# ggplot(data_prb, aes(x)) + geom_density(aes(col=e))
# ggplot(data_prb, aes(x)) + geom_density(aes(col=f))
# ggplot(data_prb, aes(x)) + geom_density(aes(col=g))


