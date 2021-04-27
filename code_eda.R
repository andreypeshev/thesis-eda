# prb = Percentage Relative Bias
# mcsd = Monte Carlo Standard Deviation
# data gen equation: Y = 1.0 + 0.33X + 0.33Z1 + 0.33Z2 + ε
# Simulation parameters:
# Proportion of the MAR predictor represented in the analysis model: pMAR = {1.0, 0.75, 0.5, 0.25, 0.0}
# Strength of correlations among the predictors: rXZ = {0.0, 0.1, 0.3, 0.5}
# Sample size: N = {100, 250, 500}
# Proportion of missing data: PM = {0.1, 0.2, 0.4}
# R^2 for the data generating model: R^2 = {0.15, 0.3, 0.6}

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

#boxplots for prb with the different conditions for x
for (i in 1:length(data_prb[1:7])){
  print(ggplot(data_prb, aes(x=data_prb[, i], y=x)) + geom_boxplot() + xlab(colnames(data_prb[i])))
}

#boxplots for prb with the different conditions for int
for (i in 1:length(data_prb[1:7])){
  print(ggplot(data_prb, aes(x=data_prb[, i], y=int)) + geom_boxplot() + xlab(colnames(data_prb[i])))
}

#boxplots for prb with the different conditions for z1
for (i in 1:length(data_prb[1:7])){
  print(ggplot(data_prb, aes(x=data_prb[, i], y=z1)) + geom_boxplot() + xlab(colnames(data_prb[i])))
}

#max and min PRB 
data_prb[which.min(abs(data_prb$x)),]
data_prb[which.max(abs(data_prb$x)),]

#couting the different number of conditions for slope PRB smaller than -10
prb_x_smallneg <- data_prb[data_prb$x < -10, ]

# for (i in 1:length(prb_x_smallneg[1:7])){
#   print(ggplot(prb_x_smallneg, aes(x=prb_x[,i])) + geom_bar() + xlab(colnames(prb_x_smallneg[i])))
# }


data_prb[data_prb$x < 1 & data_prb$x > 0, ]



