HR <- read.csv("HR_comma_sep.csv",header = TRUE)
dim(HR)

x_standardized <- as.data.frame(scale(HR[1:8]))
x_standardized

x.mat <- as.matrix(x_standardized)
cov.mat <- cor(x_standardized)

pca <- prcomp(x_standardized,center = T,scale. = T)
summary(pca)

library(ggfortify)

autoplot(pca, data = HR, colour = 'salary')
