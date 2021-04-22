# prb = Percentage Relative Bias
# mcsd = Monte Carlo Standard Deviation
# data gen equation: Y = 1.0 + 0.33X + 0.33Z1 + 0.33Z2 + ε

#clear the working enviornment 
rm(list=ls())

#import libraries
library(ggplot2)

#import data
all_data <- readRDS("data/masked_outcome_measures.rds")
data_prb <- all_data$prb
data_mcsd <- all_data$mcsd

#number of conditions per column in the data 
summary(data_prb[1:7])
summary(data_mcsd[1:7])

#boxplots for prb with the different conditions
ggplot(data_prb, aes(x=a, y=x)) + geom_boxplot()
ggplot(data_prb, aes(x=b, y=x)) + geom_boxplot()
ggplot(data_prb, aes(x=c, y=x)) + geom_boxplot()
ggplot(data_prb, aes(x=d, y=x)) + geom_boxplot()
ggplot(data_prb, aes(x=e, y=x)) + geom_boxplot()
ggplot(data_prb, aes(x=f, y=x)) + geom_boxplot()
ggplot(data_prb, aes(x=g, y=x)) + geom_boxplot()

# ggplot(data_prb, aes(int)) + geom_density(aes(col=a))
# ggplot(data_prb, aes(int)) + geom_density(aes(col=b))
# ggplot(data_prb, aes(int)) + geom_density(aes(col=c))
# ggplot(data_prb, aes(int)) + geom_density(aes(col=d))
# ggplot(data_prb, aes(int)) + geom_density(aes(col=e))
# ggplot(data_prb, aes(int)) + geom_density(aes(col=f))
# ggplot(data_prb, aes(int)) + geom_density(aes(col=g))
# 
# ggplot(data_prb, aes(z1)) + geom_density(aes(col=a))
# ggplot(data_prb, aes(z1)) + geom_density(aes(col=b))
# ggplot(data_prb, aes(z1)) + geom_density(aes(col=c))
# ggplot(data_prb, aes(z1)) + geom_density(aes(col=d))
# ggplot(data_prb, aes(z1)) + geom_density(aes(col=e))
# ggplot(data_prb, aes(z1)) + geom_density(aes(col=f))
# ggplot(data_prb, aes(z1)) + geom_density(aes(col=g))





